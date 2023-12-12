
package kr.co.green.order.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.order.model.dto.OrderDTO;
import kr.co.green.order.model.service.OrderServiceImpl;
import kr.co.green.point.model.dto.PointDTO;
import kr.co.green.point.model.service.PointServiceImpl;

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

//		boolean success = Boolean.parseBoolean(request.getParameter("success"));
//		String currency = request.getParameter("currency");
//		String status = request.getParameter("status");
//		String pg_provider = request.getParameter("pg_provider");
//		String pay_method = request.getParameter("pay_method");
//		int paid_at = Integer.valueOf(request.getParameter("paid_at"));
//		String o_merchant_uid = request.getParameter("merchant_uid");

		
		String o_imp_uid = request.getParameter("imp_uid");
		int o_people = Integer.valueOf(request.getParameter("people"));
		int o_paid_amount = Integer.valueOf(request.getParameter("paid_amount"));
		int o_point = Integer.valueOf(request.getParameter("plus_point"));
		int p_idx = Integer.valueOf(request.getParameter("p_idx"));
		String o_name = request.getParameter("name");
		int m_no = Integer.valueOf(request.getParameter("m_no"));
		String o_buyer_phone = request.getParameter("buyer_tel");
		String o_buyer_name = request.getParameter("buyer_name");
		String o_buyer_email = request.getParameter("buyer_email");
		String o_period = request.getParameter("period");
		

		System.out.println("오더에 저장");

		OrderDTO orderDTO = new OrderDTO();

		orderDTO.setO_imp_uid(o_imp_uid);
		orderDTO.setO_people(o_people);	
		orderDTO.setO_paid_amount(o_paid_amount);
		orderDTO.setO_point(o_point);
		orderDTO.setP_idx(p_idx);
		orderDTO.setO_name(o_name);
		orderDTO.setM_no(m_no);
		orderDTO.setO_buyer_phone(o_buyer_phone);
		orderDTO.setO_buyer_name(o_buyer_name);
		orderDTO.setO_buyer_email(o_buyer_email);
		orderDTO.setO_period(o_period);
//		orderDTO.setO_merchant_uid(o_merchant_uid);

		PointServiceImpl pointService = new PointServiceImpl();
		//유저 포인트 지갑 갖고오기
		PointDTO userPoint = pointService.selectPoint(m_no);
		// pm에 값 넣고
		// point에 값변경
		OrderServiceImpl orderService = new OrderServiceImpl();
		int order = orderService.orderEnroll(orderDTO);
						// 결제

		if (order == 0) {
			//결제실패
			System.out.println("결제실패");
		} else {
			// 결제성공
//			PrintWriter out = response.getWriter();
//			out.print(o_imp_uid);
			
			int pointIncrease = pointService.pointIncrease(o_point, userPoint.getP_no());
										//포인트적립 생성
			if (pointIncrease == 0) {
				// 포인트적립 생성 실패
				System.out.println("결제성공but 포인트적립 생성 실패");
			} else {
				// 포인트적립 생성 성공
				System.out.println("결제성공+포인트적립 생성 성공");
				
				
				PointDTO modification = pointService.selectPM(userPoint.getP_no());
												//가장 최신 포인트 변경 갖고 오기 
				int change = userPoint.getP_balance() + modification.getPm_amount();
				//결과			//유저 원래 포인트				//포인트 증가분
				int pointchange = pointService.pointUpdate(change, userPoint.getP_no());
										//포인트 바꾸기
				if (pointchange == 0) {
					System.out.println("포인트 증가분 적용안됨");
				} else {
					System.out.println("포인트 증가분 적용");
				}

			}
		}

	}

}
