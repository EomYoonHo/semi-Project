package kr.co.green.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.member.model.service.MemberServiceImpl;


@WebServlet("/MemberDeleteController")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemberDeleteController() {
        super();
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		HttpSession session = request.getSession();
		String name =(String)session.getAttribute("name");
		String nickname = (String)session.getAttribute("nickname");
		
		MemberServiceImpl memberService =new MemberServiceImpl();
		int result = memberService.memberDelete(name,nickname);
		
		if (result != 0) {
			session.removeAttribute("name");
			session.removeAttribute("nickname");
			session.invalidate();
		}
		RequestDispatcher view =request.getRequestDispatcher("/");
		view.forward(request, response);
		
	}

}
