package kr.co.green.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/duplicateEmail.do")
public class DuplicateEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DuplicateEmailController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");

		String email = request.getParameter("email");

		MemberServiceImpl memberService = new MemberServiceImpl();
		boolean isEmailDupilcate = memberService.duplicateEmail(email);
		System.out.println(isEmailDupilcate);
		PrintWriter out = response.getWriter();

		out.print(isEmailDupilcate);

		out.flush();
		out.close();

	}

}
