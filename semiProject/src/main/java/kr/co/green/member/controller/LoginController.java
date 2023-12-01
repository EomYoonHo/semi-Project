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

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		MemberServiceImpl memberService = new MemberServiceImpl();

		MemberDTO member = memberService.memberLogin(email, pwd);

//	if(BCrypt.checkpw(pwd,member.getM_pwd())) {
//		System.out.println("");
//	}else {
//		System.out.println("");
//	}

		if (Objects.isNull(member.getM_no())) {
			response.sendRedirect("/views/common/error.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("m_name", member.getM_name());
			session.setAttribute("m_nickname", member.getM_nickname());
			session.setAttribute("m_no", member.getM_no());

			RequestDispatcher view = request.getRequestDispatcher("/views/common/map.jsp");
			view.forward(request, response);
		}

	}

}
