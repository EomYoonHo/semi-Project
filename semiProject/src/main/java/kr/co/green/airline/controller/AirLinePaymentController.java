package kr.co.green.airline.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.airline.model.dto.AirLineDTO;
import kr.co.green.airline.model.service.AirLienServiceImpl;

@WebServlet("/AirLinePayment.do")
public class AirLinePaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AirLinePaymentController() {
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

		String at_godate = request.getParameter("at_godate");
		String at_backdate = request.getParameter("at_backdate");
		String at_starting_point = request.getParameter("at_starting_point");
		String at_destination = request.getParameter("at_destination");
		String at_airLine = request.getParameter("at_airLine");
		int at_people = Integer.valueOf(request.getParameter("at_people"));
		int at_price_per = Integer.valueOf(request.getParameter("at_price_per"));
		int at_all_price = Integer.valueOf(request.getParameter("at_all_price"));
		String at_imp_uid = request.getParameter("at_imp_uid");
		int m_no = Integer.valueOf(request.getParameter("m_no"));

		String korean_start = request.getParameter("korean_start");
		String korean_destination = request.getParameter("korean_destination");
		System.out.println(korean_start);
		System.out.println(korean_destination);
	
		
		
		
		AirLineDTO airlineDTO = new AirLineDTO();
		airlineDTO.setAt_godate(at_godate);
		airlineDTO.setAt_backdate(at_backdate);
		airlineDTO.setAt_starting_point(at_starting_point);
		airlineDTO.setAt_destination(at_destination);
		airlineDTO.setAt_airLine(at_airLine);
		airlineDTO.setAt_people(at_people);
		airlineDTO.setAt_price_per(at_price_per);
		airlineDTO.setAt_all_price(at_all_price);
		airlineDTO.setAt_imp_uid(at_imp_uid);
		airlineDTO.setM_no(m_no);

		AirLienServiceImpl airlineService = new AirLienServiceImpl();
		int result = airlineService.airLineEnroll(airlineDTO);

		if (result == 0) {
			System.out.println("결제데이터 만들기 실패");
		}else {
			System.out.println("결제데이터 만들기 성공");
		}
	}

}
