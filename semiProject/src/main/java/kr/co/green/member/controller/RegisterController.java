package kr.co.green.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// °ª¹Þ±â
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
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

		
		//È¸¿ø°¡ÀÔ
		MemberServiceImpl memberService = new MemberServiceImpl();
		int result  = memberService.memberEnroll(memberDTO);
		if (result==0) {
			validationAlert(response,"È¸¿ø°¡ÀÔ¿¡ ½ÇÆÐÇß½À´Ï´Ù.");
		}else {
			RequestDispatcher view =request.getRequestDispatcher("/views/member/login.jsp");
			view.forward(request, response);
			System.out.println("¼º°ø");
		}
		
//		//À¯È¿¼º °Ë»ç
//		//ÀÌ¸§
//		String namePattern ="^[°¡-ÆR]+$";
//		Pattern pattern = Pattern.compile(namePattern);
//		Matcher nameMatcher=pattern.matcher(name);
//		//ÆÐ½º¿öµå
//		String pwdpattern ="^(?=.*[a-zA-Z])(?=.*[@$!%*?&\\\\#])[A-Za-z\\\\d@$!%*?&\\\\#]{6,20}$";
//		Pattern passwordPattern = Pattern.compile(pwdpattern);
//		Matcher pwdMatcher = pattern.matcher(pwd);
		
//		if(nameMatcher.matches()&&pwdMatcher.matches()) {
	
			
		
			
//		}else if(!nameMatcher.matches()) {
//			validationAlert(response,"¿Ü±¹ÀÎÀº È¸¿øÀ¸·Î ¹ÞÁö ¾Ê½À´Ï´Ù");
//		}else if(!pwdMatcher.matches()) {
//			validationAlert(response,"ºñ¹Ð¹øÈ£°¡ Á¤Ã¥¿¡ ¸ÂÁö ¾Ê½À´Ï´Ù");
//		}
		

	}
	
	
//////////////////////////////////
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// °ª¹Þ±â
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
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

		
		//È¸¿ø°¡ÀÔ
		MemberServiceImpl memberService = new MemberServiceImpl();
		int result  = memberService.memberEnroll(memberDTO);
		if (result==0) {
			validationAlert(response,"È¸¿ø°¡ÀÔ¿¡ ½ÇÆÐÇß½À´Ï´Ù.");
		}else {
			RequestDispatcher view =request.getRequestDispatcher("/views/member/login.jsp");
			view.forward(request, response);
			System.out.println("¼º°ø");
		}
		
//		//À¯È¿¼º °Ë»ç
//		//ÀÌ¸§
//		String namePattern ="^[°¡-ÆR]+$";
//		Pattern pattern = Pattern.compile(namePattern);
//		Matcher nameMatcher=pattern.matcher(name);
//		//ÆÐ½º¿öµå
//		String pwdpattern ="^(?=.*[a-zA-Z])(?=.*[@$!%*?&\\\\#])[A-Za-z\\\\d@$!%*?&\\\\#]{6,20}$";
//		Pattern passwordPattern = Pattern.compile(pwdpattern);
//		Matcher pwdMatcher = pattern.matcher(pwd);
		
//		if(nameMatcher.matches()&&pwdMatcher.matches()) {
	
			
		
			
//		}else if(!nameMatcher.matches()) {
//			validationAlert(response,"¿Ü±¹ÀÎÀº È¸¿øÀ¸·Î ¹ÞÁö ¾Ê½À´Ï´Ù");
//		}else if(!pwdMatcher.matches()) {
//			validationAlert(response,"ºñ¹Ð¹øÈ£°¡ Á¤Ã¥¿¡ ¸ÂÁö ¾Ê½À´Ï´Ù");
//		}
		
	}
	
	
	////////////////////////////////////////
	
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
