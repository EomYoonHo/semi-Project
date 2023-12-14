package kr.co.green.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;
import kr.co.green.point.model.service.PointServiceImpl;

@WebServlet("/register.do")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 값받기
//		String email = request.getParameter("email");
//		String pwd = request.getParameter("pwd");
//		String pwdCheck = request.getParameter("pwdCheck");
//		String name = request.getParameter("name");
//		String phone = request.getParameter("phone");
//		String nickname = request.getParameter("nickname");
//
////	String salt = BCrypt.gensalt(12);
////	
////	String hashedPassword = BCrypt.hashpw(pwd,salt);
//
//		//
//		MemberDTO memberDTO = new MemberDTO();
//		memberDTO.setM_email(email);
//		memberDTO.setM_pwd(pwd);
//		memberDTO.setM_name(name);
//		memberDTO.setM_phone(phone);
//		memberDTO.setM_nickname(nickname);
//
//		PointServiceImpl pointService = new PointServiceImpl();
//
//		MemberServiceImpl memberService = new MemberServiceImpl();
//
//		int result = memberService.memberEnroll(memberDTO);
//
//		MemberDTO pointmaker = new MemberDTO();
//		pointmaker.setM_email(email);
//		// 회원가입
//		if (result == 0) {
//			validationAlert(response, "회원가입에 실패했습니다.");
//		} else {
//			memberService.selectMember(pointmaker);
//			int m_no = pointmaker.getM_no();
//			int presult = pointService.pointEnroll(m_no);
//			if (presult == 0) {
//				System.out.println("포인트 실패");
//			} else {
//				System.out.println("포인트 만듬");
//			}
//			RequestDispatcher view = request.getRequestDispatcher("/views/member/login.jsp");
//			view.forward(request, response);
//			System.out.println("회원가입 성공");
//		}
//
////		//유효성 검사
////		//이름
////		String namePattern ="^[가-힣]+$";
////		Pattern pattern = Pattern.compile(namePattern);
////		Matcher nameMatcher=pattern.matcher(name);
////		//패스워드
////		String pwdpattern ="^(?=.*[a-zA-Z])(?=.*[@$!%*?&\\\\#])[A-Za-z\\\\d@$!%*?&\\\\#]{6,20}$";
////		Pattern passwordPattern = Pattern.compile(pwdpattern);
////		Matcher pwdMatcher = pattern.matcher(pwd);
//
////		if(nameMatcher.matches()&&pwdMatcher.matches()) {
//
////		}else if(!nameMatcher.matches()) {
////			validationAlert(response,"외국인은 회원으로 받지 않습니다");
////		}else if(!pwdMatcher.matches()) {
////			validationAlert(response,"비밀번호가 정책에 맞지 않습니다");
////		}

	}

//////////////////////////////////

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 값받기
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String pwdCheck = request.getParameter("pwdCheck");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String nickname = request.getParameter("nickname");

		String salt = BCrypt.gensalt(12);

		String hashedPassword = BCrypt.hashpw(pwd, salt);

		//
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_email(email);
		memberDTO.setM_pwd(hashedPassword);
		memberDTO.setM_name(name);
		memberDTO.setM_phone(phone);
		memberDTO.setM_nickname(nickname);

		PointServiceImpl pointService = new PointServiceImpl();
		MemberServiceImpl memberService = new MemberServiceImpl();

		int result = memberService.memberEnroll(memberDTO);

		MemberDTO pointmaker = new MemberDTO();
		pointmaker.setM_email(email);
		memberService.selectMember(pointmaker);

		System.out.println(pointmaker.getM_no());
		System.out.println(pointmaker.getM_email());
		System.out.println(pointmaker.getM_pwd());
		System.out.println(pointmaker.getM_name());
		System.out.println(pointmaker.getM_nickname());

		int m_no = pointmaker.getM_no();

		// 회원가입
		if (result == 0) {
			validationAlert(response, "회원가입에 실패했습니다.");
		} else {
			int presult = pointService.pointEnroll(m_no);
			if (presult == 0) {
				System.out.println("포인트 실패");
			} else {
				System.out.println("포인트 만듬");
			}
			System.out.println("회원가입 성공");
			RequestDispatcher view = request.getRequestDispatcher("/views/member/login.jsp");
			view.forward(request, response);
		}

//		//유효성 검사
//		//이름
//		String namePattern ="^[가-힣]+$";
//		Pattern pattern = Pattern.compile(namePattern);
//		Matcher nameMatcher=pattern.matcher(name);
//		//패스워드
//		String pwdpattern ="^(?=.*[a-zA-Z])(?=.*[@$!%*?&\\\\#])[A-Za-z\\\\d@$!%*?&\\\\#]{6,20}$";
//		Pattern passwordPattern = Pattern.compile(pwdpattern);
//		Matcher pwdMatcher = pattern.matcher(pwd);

//		if(nameMatcher.matches()&&pwdMatcher.matches()) {

//		}else if(!nameMatcher.matches()) {
//			validationAlert(response,"외국인은 회원으로 받지 않습니다");
//		}else if(!pwdMatcher.matches()) {
//			validationAlert(response,"비밀번호가 정책에 맞지 않습니다");
//		}

	}

	////////////////////////////////////////

	private void validationAlert(HttpServletResponse response, String msg) throws IOException {
		PrintWriter out = response.getWriter();
		out.println("<script>" + "	location.href='/views/member/register.jsp';" + "	alter('" + msg + "'); "
				+ "	</script>");
		out.flush();
		out.close();

	}
}
