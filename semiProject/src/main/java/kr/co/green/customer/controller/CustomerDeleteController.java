package kr.co.green.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.customer.model.service.CustomerServiceImpl;

@WebServlet("/customerDelete.do")
public class CustomerDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CustomerDeleteController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int idx = Integer.parseInt(request.getParameter("idx"));

		try {
			int m_no = (int) session.getAttribute("m_no");

			CustomerServiceImpl customerService = new CustomerServiceImpl();

			int result = customerService.customerDelete(idx);

			if (result > 0) {
				response.sendRedirect("/customerList.do?cpage=1");
			} else {
				RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
				view.forward(request, response);
			}
		} catch (Exception e) {
			response.sendRedirect("/views/common/error.jsp");
		}

	}

}
