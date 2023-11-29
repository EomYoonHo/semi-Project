package kr.co.green.board.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.board.model.dto.BoardDTO;
import kr.co.green.board.model.service.BoardServiceImpl;

@WebServlet("/boardDetail.do")
public class BoardDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardDetailController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.idx받기
		int b_idx = Integer.parseInt(request.getParameter("b_idx"));
		int b_row = Integer.parseInt(request.getParameter("b_row"));
		
		//2.클릭하면 조회수 늘리기
		BoardServiceImpl boardService = new BoardServiceImpl();
		int result = boardService.boardView(b_idx);
		
		if(result > 0) {
			//3.idx로 게시판 내용들 조회(SELECT)
			BoardDTO board = new BoardDTO();
			board.setB_idx(b_idx);
			boardService.boardSelect(board);
			
			
			
			//4.freeDetail.jsp로 포워딩
			if(!Objects.isNull(board.getB_idx())) {
				request.setAttribute("board",board);
				request.setAttribute("b_row", b_row);
				RequestDispatcher view = request.getRequestDispatcher("/views/board/boardDetail.jsp");
				view.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
