package kr.co.green.ReviewBoard.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


@WebServlet("/detail.do")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DetailController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		int mno = Integer.parseInt(request.getParameter("mno"));
		
		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();
		int result = boardService.boardView(idx);
		
		
		if(result > 0) {
			HttpSession session = request.getSession();
				
			
			
			ReviewBoardDTO reviewboard = new ReviewBoardDTO();
			reviewboard.setIdx(idx);
			reviewboard.setMno(mno);
			boardService.boardSelect(reviewboard);
			System.out.println(reviewboard.getMno());
			System.out.println(session.getAttribute("m_no"));
			if(!Objects.isNull(reviewboard.getIdx())) {
				request.setAttribute("reviewboard", reviewboard);
				RequestDispatcher view = request.getRequestDispatcher("/views/reviewboard/reviewDetail.jsp");
				view.forward(request, response);
			}else {
				RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
				view.forward(request, response);
			}
			
			
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
