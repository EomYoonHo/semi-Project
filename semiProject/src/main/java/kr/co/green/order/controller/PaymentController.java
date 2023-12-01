package kr.co.green.order.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.order.model.dto.OrderDTO;
import kr.co.green.order.model.service.OrderServiceImpl;

@WebServlet("/payment.do")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PaymentController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");

		boolean success = Boolean.parseBoolean(request.getParameter("success"));
		String currency = request.getParameter("currency");
		String status = request.getParameter("status");
		String pg_provider = request.getParameter("pg_provider");
		String pay_method = request.getParameter("pay_method");
		int paid_at = Integer.valueOf(request.getParameter("paid_at"));

		String o_imp_uid = request.getParameter("imp_uid");
		String o_merchant_uid = request.getParameter("merchant_uid");
		String o_name = request.getParameter("name");
		int o_paid_amount = Integer.valueOf(request.getParameter("paid_amount"));
		String o_buyer_phone = request.getParameter("buyer_tel");
		String o_buyer_name = request.getParameter("buyer_name");
		String o_buyer_email = request.getParameter("buyer_email");
		String o_period = request.getParameter("period");

		System.out.println("주문 번호 : " + o_imp_uid);
		System.out.println("고유번호 : " + o_merchant_uid);
		System.out.println("상품 : " + o_name);
		System.out.println("결제금액 : " + o_paid_amount);
		System.out.println("buyer_tel : " + o_buyer_phone);
		System.out.println("buyer_name : " + o_buyer_name);
		System.out.println("buyer_email : " + o_buyer_email);
		System.out.println("여행기간 : " + o_period);

		OrderDTO orderDTO = new OrderDTO();

		orderDTO.setO_imp_uid(o_imp_uid);
		orderDTO.setO_merchant_uid(o_merchant_uid);
		orderDTO.setO_name(o_name);
		orderDTO.setO_paid_amount(o_paid_amount);
		orderDTO.setO_buyer_phone(o_buyer_phone);
		orderDTO.setO_buyer_name(o_buyer_name);
		orderDTO.setO_buyer_email(o_buyer_email);
		orderDTO.setO_period(o_period);

		OrderServiceImpl orderService = new OrderServiceImpl();
		int order = orderService.orderEnroll(orderDTO);
		if (order == 0) {
			System.out.println("결제실패");
		} else {
			PrintWriter out = response.getWriter();
			out.print(o_imp_uid);

		}

	}

}
