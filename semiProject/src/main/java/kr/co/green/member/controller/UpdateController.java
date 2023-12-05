package kr.co.green.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateController() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String nickName = request.getParameter("nickName");
		int mno = (int)session.getAttribute("m_no");

		MemberServiceImpl memberService = new MemberServiceImpl();
		MemberDTO memberdto = new MemberDTO();
		
		
		
		
		memberdto.setM_name(name);
		memberdto.setM_phone(phone);
		memberdto.setM_email(email);
		memberdto.setM_nickname(nickName);
		memberdto.setM_pwd(pwd);
		memberdto.setM_no(mno);
		
		int result = memberService.memberUpdate(memberdto);
		
		session.setAttribute("m_name", name);
		session.setAttribute("m_phone", phone);
		session.setAttribute("m_nickname", nickName);
		
//		session.setAttribute(name, memberdto.getM_name());
//		session.setAttribute(email, memberdto.getM_email());
//		session.setAttribute(nickName, memberdto.getM_nickname());
		
		RequestDispatcher view = request.getRequestDispatcher("/views/myPage/myPage.jsp");
		view.forward(request, response);
	
	}

}
