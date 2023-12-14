package kr.co.green.ReviewBoard.controller;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


@WebServlet("/reviewEnroll.do")
//@MultipartConfig(
//		fileSizeThreshold = 1024 * 1024,
//		maxFileSize = 1024 * 1024 * 5,
//		maxRequestSize = 1024 * 1024 * 5 *5		
//		)

public class EnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EnrollController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		
		
		HttpSession session = request.getSession();
		
		try {
			
		int mno = (int)session.getAttribute("m_no");
		String nickName = (String)session.getAttribute("nickName");
 		
 		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();	
 		ReviewBoardDTO board = new ReviewBoardDTO();
 		
 		board.setMno(mno);
 		System.out.println(board.getMno());
 		
 		int result = boardService.boardEnroll(title, content, star, mno);
	
 		if(result > 0) {
 			response.sendRedirect("/reviewBoardList.do?cpage=1");
 		}else {
 			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
 		}
 		
		}catch(Exception e){
			response.sendRedirect("/views/common/error.jsp");
		}
 		
	}

}
