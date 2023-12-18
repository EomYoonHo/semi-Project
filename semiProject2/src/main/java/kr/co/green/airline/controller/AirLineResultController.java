package kr.co.green.airline.controller;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.airline.model.dto.AirLineDTO;
import kr.co.green.airline.model.service.AirLienServiceImpl;
import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/AirLineResult.do")
public class AirLineResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AirLineResultController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");

		AirLienServiceImpl airLineService = new AirLienServiceImpl();
		MemberServiceImpl memberService = new MemberServiceImpl();
		MemberDTO memberInfo = new MemberDTO();

		
		HttpSession session = request.getSession();
		
		
			
		int m_no = (int) session.getAttribute("m_no");
		String m_email = (String) session.getAttribute("m_email");
		memberInfo.setM_email(m_email);
		

		String korean_start = request.getParameter("korean_start");
		String korean_destination = request.getParameter("korean_destination");
		
		String at_imp_uid = request.getParameter("at_imp_uid");
		AirLineDTO ariLineDTO = airLineService.selectAirLine(at_imp_uid);

		if (ariLineDTO.getM_no() == m_no) {

			memberService.selectMember(memberInfo);
			System.out.println(memberInfo.getM_name());
			request.setAttribute("korean_start", korean_start);
			request.setAttribute("korean_destination", korean_destination);
			request.setAttribute("memberInfo", memberInfo);
			request.setAttribute("ariLineDTO", ariLineDTO);

			RequestDispatcher view = request.getRequestDispatcher("/views/airLine/airLineResult.jsp");
			view.forward(request, response);

		} else {
			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
		}
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
