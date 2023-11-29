package kr.co.green.member.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		String email = request.getParameter("email");
//		String pwd = request.getParameter("pwd");
<<<<<<< HEAD
//		System.out.println("�޾ƿ��°�"+email);
//
//		MemberServiceImpl memberService = new MemberServiceImpl();
//
//		MemberDTO member = memberService.memberLogin(email, pwd);
//
////	if(BCrypt.checkpw(pwd,member.getM_pwd())) {
////		System.out.println("");
////	}else {
////		System.out.println("");
////	}
//
//		if (Objects.isNull(member.getM_no())) {
//			response.sendRedirect("/views/common/error.jsp");
//		} else {
//			HttpSession session = request.getSession();
//			session.setAttribute("name", member.getM_name());
//			session.setAttribute("nickname", member.getM_nickname());
//			System.out.println(member.getM_name());
//			
//
//			RequestDispatcher view = request.getRequestDispatcher("/views/common/map.jsp");
//			view.forward(request, response);
//		}

	}
	
////////////////////////////////
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		System.out.println("�̸���:"+email);
		System.out.println("���:"+pwd);

		MemberServiceImpl memberService = new MemberServiceImpl();

		MemberDTO member = memberService.memberLogin(email, pwd);

//	if(BCrypt.checkpw(pwd,member.getM_pwd())) {
//		System.out.println("");
//	}else {
//		System.out.println("");
//	}

		if (Objects.isNull(member.getM_no())) {
			response.sendRedirect("/views/reviewboard/review.jsp");
			System.out.println("����");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("name", member.getM_name());
			session.setAttribute("email", member.getM_email());
			session.setAttribute("nickName", member.getM_nickname());
			System.out.println("�α����ѻ��:"+member.getM_name());

			RequestDispatcher view = request.getRequestDispatcher("/views/reviewboard/review.jsp");
=======
//		System.out.println("받아오는값"+email);
//
//		MemberServiceImpl memberService = new MemberServiceImpl();
//
//		MemberDTO member = memberService.memberLogin(email, pwd);
//
////	if(BCrypt.checkpw(pwd,member.getM_pwd())) {
////		System.out.println("");
////	}else {
////		System.out.println("");
////	}
//
//		if (Objects.isNull(member.getM_no())) {
//			response.sendRedirect("/views/common/error.jsp");
//		} else {
//			HttpSession session = request.getSession();
//			session.setAttribute("name", member.getM_name());
//			session.setAttribute("nickname", member.getM_nickname());
//			System.out.println(member.getM_name());
//			
//
//			RequestDispatcher view = request.getRequestDispatcher("/views/common/map.jsp");
//			view.forward(request, response);
//		}

	}
	
////////////////////////////////
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		System.out.println("이메일:"+email);
		System.out.println("비번:"+pwd);

		MemberServiceImpl memberService = new MemberServiceImpl();

		MemberDTO member = memberService.memberLogin(email, pwd);

//	if(BCrypt.checkpw(pwd,member.getM_pwd())) {
//		System.out.println("");
//	}else {
//		System.out.println("");
//	}

		if (Objects.isNull(member.getM_name())) {
			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("m_name", member.getM_name());
			session.setAttribute("m_email", member.getM_email());
			session.setAttribute("m_nickname", member.getM_nickname());
			session.setAttribute("m_no", member.getM_no());

			RequestDispatcher view = request.getRequestDispatcher("/views/common/map.jsp");
>>>>>>> branch 'master' of https://github.com/EomYoonHo/semi-Project.git
			view.forward(request, response);
		}

	}

}
