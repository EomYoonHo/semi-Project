package kr.co.green.ReviewBoard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


@WebServlet("/UpdateController.do")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		String fileName = request.getParameter("fileName");
		String uploadDirectory = request.getParameter("uploadDirectory");
		
		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();
		ReviewBoardDTO boardDTO = new ReviewBoardDTO();
		
		int result = boardService.boardUpdate(idx, title, content, star, fileName, uploadDirectory);
		
		if(result > 0) {
			response.sendRedirect("/reviewBoardList.do?cpage=1");
		}else {
			
		}
	}

}
