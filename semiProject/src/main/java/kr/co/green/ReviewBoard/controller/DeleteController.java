package kr.co.green.ReviewBoard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


@WebServlet("/Delete.do")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		try {
			
		int mno = (int)session.getAttribute("m_no");
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();
		
		int result = boardService.boardDelete(idx);
		
		if(result > 0) {
			response.sendRedirect("/reviewBoardList.do?cpage=1");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
		}
		}catch(Exception e){
			response.sendRedirect("/views/common/loginError.jsp");
		}
				
		
	}

}
