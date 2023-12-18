package kr.co.green.authentication.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/PasswordChange.do")
public class PasswordChangeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PasswordChangeController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		//값 받기
		String password = request.getParameter("password");
		String passwordCheck = request.getParameter("passwordCheck");
		String email = request.getParameter("email");
		// 패스워드 정규화
		String pwdpattern = "^(?=.*[a-zA-Z])(?=.*[@$!%*?&\\#])[A-Za-z\\d@$!%*?&\\#]{6,20}$";
		Pattern passwordPattern = Pattern.compile(pwdpattern);
		Matcher pwdMatcher = passwordPattern.matcher(password);
			//비밀번호 확인 //정규화 확인
		if (password.equals(passwordCheck) && pwdMatcher.matches()) {
			//비밀번호 암호화
			String salt = BCrypt.gensalt(12);
			String hashedPassword = BCrypt.hashpw(password, salt);
			//비밀번호 변경
			MemberServiceImpl memberService = new MemberServiceImpl();
			int result = memberService.passwordChange(hashedPassword, email);
			if (result == 0) {
				System.out.println("비밀번호 변경실패");
				response.sendRedirect("/views/common/error.jsp");
			} else {//비밀번호 변경 성공
				System.out.println("비밀번호 변경성공");
				RequestDispatcher view = request.getRequestDispatcher("/views/member/login.jsp");
				view.forward(request, response);
			}
		} else if (!pwdMatcher.matches()) {//정규화 부적합
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('비밀번호가 부적합 합니다'); location.href='" + "/views/member/login.jsp" + "';</script>");
			writer.close();
		} else if (!password.equals(passwordCheck)) {//비밀번호 비밀번호확인과 동일하지 않음
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('비밀번호를 다시 확인하세요'); location.href='" + "/views/member/login.jsp" + "';</script>");
			writer.close();
		} else {
			response.sendRedirect("/views/common/error.jsp");
		}
	}
}
