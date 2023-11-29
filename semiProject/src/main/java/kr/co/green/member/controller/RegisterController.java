package kr.co.green.member.controller;

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

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/register.do")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 媛믩컺湲�
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String pwdCheck = request.getParameter("pwdCheck");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");

//	String salt = BCrypt.gensalt(12);
//	
//	String hashedPassword = BCrypt.hashpw(pwd,salt);

		//
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_email(email);
		memberDTO.setM_pwd(pwd);
		memberDTO.setM_name(name);
		memberDTO.setM_nickname(nickname);

		
		//�쉶�썝媛��엯
		MemberServiceImpl memberService = new MemberServiceImpl();
		int result  = memberService.memberEnroll(memberDTO);
		if (result==0) {
			validationAlert(response,"�쉶�썝媛��엯�뿉 �떎�뙣�뻽�뒿�땲�떎.");
		}else {
			RequestDispatcher view =request.getRequestDispatcher("/views/member/map.jsp");
			view.forward(request, response);
			System.out.println("�꽦怨�");
		}
		
//		//�쑀�슚�꽦 寃��궗
//		//�씠由�
//		String namePattern ="^[媛�-�옡]+$";
//		Pattern pattern = Pattern.compile(namePattern);
//		Matcher nameMatcher=pattern.matcher(name);
//		//�뙣�뒪�썙�뱶
//		String pwdpattern ="^(?=.*[a-zA-Z])(?=.*[@$!%*?&\\\\#])[A-Za-z\\\\d@$!%*?&\\\\#]{6,20}$";
//		Pattern passwordPattern = Pattern.compile(pwdpattern);
//		Matcher pwdMatcher = pattern.matcher(pwd);
		
//		if(nameMatcher.matches()&&pwdMatcher.matches()) {
	
			
		
			
//		}else if(!nameMatcher.matches()) {
//			validationAlert(response,"�쇅援��씤�� �쉶�썝�쑝濡� 諛쏆� �븡�뒿�땲�떎");
//		}else if(!pwdMatcher.matches()) {
//			validationAlert(response,"鍮꾨�踰덊샇媛� �젙梨낆뿉 留욎� �븡�뒿�땲�떎");
//		}
		
	}
	private void validationAlert(HttpServletResponse response, String msg)throws IOException{
		PrintWriter out = response.getWriter();
		out.println("<script>"
				+ "	location.href='/views/member/register.jsp';"
				+ "	alter('"+msg+"'); "
				+ "	</script>");
		out.flush();
		out.close();
		
	}
}
