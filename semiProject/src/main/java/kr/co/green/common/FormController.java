package kr.co.green.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/form/*")
public class FormController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FormController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");

		String action = request.getPathInfo();
		String nextPage = "";

		if (action.equals("/loginform.do")) {
			nextPage = "/views/member/login.jsp";
		} else if (action.equals("/registerform.do")) {
			nextPage = "/views/member/register.jsp";
		} else if (action.equals("/mapform.do")) {
			nextPage = "/views/member/map.jsp";
		}

		if (nextPage != null && !nextPage.isEmpty()) {
			RequestDispatcher view = request.getRequestDispatcher(nextPage);
			view.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
