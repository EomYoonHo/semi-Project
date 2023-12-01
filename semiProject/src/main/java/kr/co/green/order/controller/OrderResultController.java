package kr.co.green.order.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.order.model.dto.OrderDTO;
import kr.co.green.order.model.service.OrderServiceImpl;
import kr.co.green.packages.model.dto.PackageDTO;
import kr.co.green.packages.model.service.PackageServiceImpl;

@WebServlet("/orderResult.do")
public class OrderResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderResultController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		OrderServiceImpl orderService = new OrderServiceImpl();
		PackageServiceImpl packageService =new PackageServiceImpl();
		
		String imp_uid = request.getParameter("imp_uid");
		OrderDTO orderDTO = orderService.selectOrder(imp_uid);
		
		System.out.println(orderDTO.getO_name());
		String p_name= orderDTO.getO_name();
		
		PackageDTO getPrice =packageService.getP_price(p_name);
		
		int paid_amount = orderDTO.getO_paid_amount();
		int goodsPrice = getPrice.getP_price();
		
		int people = paid_amount/goodsPrice;
		
		request.setAttribute("orderDTO", orderDTO);
		request.setAttribute("getPrice", getPrice);
		request.setAttribute("people", people);
		
		
		RequestDispatcher view = request.getRequestDispatcher("/views/package/orderResult.jsp");
		view.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
