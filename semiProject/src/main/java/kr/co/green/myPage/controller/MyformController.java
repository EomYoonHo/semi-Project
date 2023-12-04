package kr.co.green.myPage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.member.model.dto.MemberDTO;


@WebServlet("/MyformController")
public class MyformController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyformController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session =request.getSession();
		
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String nickName =request.getParameter("nickName");
		
		session.setAttribute("name", name);
		session.setAttribute("phone", phone);
		session.setAttribute("email", email);
		session.setAttribute("pwd", pwd);
		session.setAttribute("nickName", nickName);
		
//		MemberDTO member = new MemberDTO();
//		member.setM_name(name);
//		member.setM_phone(phone);
//		member.setM_email(email);
//		member.setM_pwd(pwd);
//		member.setM_nickname(nickName);
	
		System.out.println(name);
		System.out.println(phone);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/myPage/infoUpdate.jsp");
		view.forward(request, response);
	}

}
