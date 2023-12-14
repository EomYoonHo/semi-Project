package kr.co.green.ReviewBoard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


@WebServlet("/Update.do")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		
		HttpSession session = request.getSession();
		try {
			
		
			
		int mno = (int) session.getAttribute("m_no");
		
		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();
		ReviewBoardDTO reviewboard = new ReviewBoardDTO();
		
		reviewboard.setContent(content);
		request.setAttribute("reviewboard", reviewboard);
		
		
		int result = boardService.boardUpdate(idx, title, content, star);
		
		if(result > 0) {
			response.sendRedirect("/reviewBoardList.do?cpage=1");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
		}
		}catch(Exception e) {
			response.sendRedirect("/views/common/error.jsp");
		}
		
	}

}
