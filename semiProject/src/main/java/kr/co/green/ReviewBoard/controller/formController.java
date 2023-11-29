package kr.co.green.ReviewBoard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;


@WebServlet("/reviewForm.do")
public class formController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public formController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		String indate = request.getParameter("indate");
		int views = Integer.parseInt(request.getParameter("views"));
		String nickName = request.getParameter("nickName");
		
		
		
		
		
		ReviewBoardDTO reviewboard = new ReviewBoardDTO();
		reviewboard.setIdx(idx);
		reviewboard.setTitle(title);
		reviewboard.setContent(content);
		reviewboard.setStar(star);
		reviewboard.setIndate(indate);
		reviewboard.setViews(views);
		reviewboard.setNickName(nickName);
		
		System.out.println(star);
		request.setAttribute("reviewboard", reviewboard);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/reviewboard/reviewUpdate.jsp");
		view.forward(request, response);
	
		
	
	
	
	}

}
