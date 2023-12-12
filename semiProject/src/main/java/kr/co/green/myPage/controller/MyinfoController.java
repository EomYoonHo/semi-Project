package kr.co.green.myPage.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.point.model.dto.PointDTO;
import kr.co.green.point.model.service.PointServiceImpl;


@WebServlet("/Myinfo.do")
public class MyinfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MyinfoController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session =request.getSession();		
		int m_no= (int)session.getAttribute("m_no");
//		int p_balance = Integer.parseInt(request.getParameter("p_balance"));
		PointServiceImpl pointService = new PointServiceImpl();
		

		//		System.out.println(m_no);
		PointDTO points = pointService.selectPoint(m_no);
		
		if(!Objects.isNull(points.getM_no())) {
			request.setAttribute("points", points);
			RequestDispatcher view = request.getRequestDispatcher("/views/myPage/infoDetail.jsp");
			view.forward(request, response);
		}
		
	}

}
