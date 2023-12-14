package kr.co.green.airline.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.airline.model.dto.AirLineDTO;
import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/ChooseAirline.do")
public class ChooseAirLineController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChooseAirLineController() {
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
		
		MemberServiceImpl memberService= new MemberServiceImpl();
		MemberDTO memberInfo = new MemberDTO();
		
		
		HttpSession session =request.getSession();
		try {
			
		int mno = (int) session.getAttribute("m_no");
		
		String m_email = (String)session.getAttribute("m_email");
		memberInfo.setM_email(m_email);
		memberService.selectMember(memberInfo);
		
		String godate =request.getParameter("godate");
		String backdate =request.getParameter("backdate");
		String starting_point = request.getParameter("starting_point");
		String destination = request.getParameter("destination");
		int people = Integer.valueOf(request.getParameter("people"));
		int price_per = Integer.valueOf(request.getParameter("price_per"));
		int allprice = Integer.valueOf(request.getParameter("allprice"));
		String korean_destination =request.getParameter("korean_destination");
		String korean_start =request.getParameter("korean_start");

		
		
		AirLineDTO airlineDTO =new AirLineDTO();
		
		airlineDTO.setAt_godate(godate);
		airlineDTO.setAt_backdate(backdate);
		airlineDTO.setAt_starting_point(starting_point);
		airlineDTO.setAt_destination(destination);
		airlineDTO.setAt_people(people);
		airlineDTO.setAt_price_per(price_per);
		airlineDTO.setAt_all_price(allprice);
		airlineDTO.setKorean_destination(korean_destination);
		airlineDTO.setKorean_start(korean_start);
		
		
		request.setAttribute("airlineDTO", airlineDTO);
		request.setAttribute("memberInfo", memberInfo);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/airLine/airLineTicket.jsp");
		view.forward(request, response);
		}catch(Exception e) {
			response.sendRedirect("/views/common/loginError.jsp");
		}

	}

}
