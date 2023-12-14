package kr.co.green.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.customer.model.dto.CustomerDTO;
import kr.co.green.customer.model.service.CustomerServiceImpl;

@WebServlet("/customerUpdate.do")
public class CustomerUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CustomerUpdateController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			int m_no = (int) session.getAttribute("m_no");
			int idx = Integer.parseInt(request.getParameter("idx"));
			String reply = request.getParameter("reply");
			String replyCheck = request.getParameter("replyCheck");
			System.out.println(replyCheck);
			System.out.println(reply);
			CustomerServiceImpl customerService = new CustomerServiceImpl();

			CustomerDTO customerDTO = new CustomerDTO();

			customerDTO.setCs_reply(reply);
			customerDTO.setCs_reply_check(replyCheck);

			request.setAttribute("customerDTO", customerDTO);

			int result = customerService.customerUpdate(idx, reply, replyCheck);

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
