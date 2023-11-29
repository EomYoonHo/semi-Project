package kr.co.green.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.board.model.dto.BoardDTO;
import kr.co.green.board.model.service.BoardServiceImpl;


@WebServlet("/boardForm.do")
public class BoardUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardUpdateFormController() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 값 받기 (세션에 있는 no)
		System.out.println("asdsad");
		int b_idx = Integer.parseInt(request.getParameter("b_idx"));
		int b_row = Integer.parseInt(request.getParameter("b_row"));
		
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setB_idx(b_idx);
		
		// 2. 서비스 호출
		BoardServiceImpl boardService = new BoardServiceImpl();
		boardService.boardUpdateSelect(boardDTO);
		
		// 3. 데이터바인딩 -> 포워딩
		request.setAttribute("board", boardDTO);
		request.setAttribute("b_row", b_row);
		RequestDispatcher view = request.getRequestDispatcher("/views/board/boardUpdate.jsp");
		view.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
