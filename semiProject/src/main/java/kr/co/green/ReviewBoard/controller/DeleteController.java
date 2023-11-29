package kr.co.green.ReviewBoard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


<<<<<<< HEAD
@WebServlet("/boardDelete.do")
=======
@WebServlet("/Delete.do")
>>>>>>> branch 'master' of https://github.com/EomYoonHo/semi-Project.git
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();
		
		int result = boardService.boardDelete(idx);
		
		if(result > 0) {
			response.sendRedirect("/reviewBoardList.do?cpage=1");
		}
				
		
	}

}
