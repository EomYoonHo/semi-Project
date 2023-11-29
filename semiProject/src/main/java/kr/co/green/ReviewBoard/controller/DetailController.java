package kr.co.green.ReviewBoard.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


@WebServlet("/DetailController")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();
		int result = boardService.boardView(idx);
		
		if(result > 0) {
			
			ReviewBoardDTO board = new ReviewBoardDTO();
			board.setIdx(idx);
			
			boardService.boardSelect(board);
			
			
			if(!Objects.isNull(board.getIdx())) {
				request.setAttribute("board", board);
				RequestDispatcher view = request.getRequestDispatcher(" ");
				view.forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
