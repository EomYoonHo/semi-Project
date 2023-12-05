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
import kr.co.green.point.model.dto.PointDTO;
import kr.co.green.point.model.service.PointServiceImpl;

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
		PackageServiceImpl packageService = new PackageServiceImpl();
		PointServiceImpl pointService = new PointServiceImpl();

		String imp_uid = request.getParameter("imp_uid");
		OrderDTO orderDTO = orderService.selectOrder(imp_uid);
		//오더정보
		
		String p_name = orderDTO.getO_name();
		PackageDTO packageDTO = packageService.getP_price(p_name);
		//패키지정보
		
		PointDTO allpoint =pointService.selectPoint(orderDTO.getM_no());
		//포인트정보
		
		
		PointDTO selectPM = pointService.selectPM(allpoint.getP_no());
		//쓴거
		
		request.setAttribute("orderDTO", orderDTO);
		request.setAttribute("packageDTO", packageDTO);
		request.setAttribute("allpoint", allpoint);
		request.setAttribute("selectPM", selectPM);
		
		
		RequestDispatcher view = request.getRequestDispatcher("/views/package/orderResult.jsp");
		view.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
