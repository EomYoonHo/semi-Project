package kr.co.green.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.board.model.service.BoardServiceImpl;

@WebServlet("/boardDelete.do")
public class BoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardDeleteController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();

		try {
			int m_no = (int) session.getAttribute("m_no");
			int b_idx = Integer.parseInt(request.getParameter("b_idx"));

			BoardServiceImpl boardService = new BoardServiceImpl();
			int result = boardService.boardDelete(b_idx);

			if (result == 0) {
				// 실패시 /views/common/error.jsp
				RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
				view.forward(request, response);
			} else {
				// 성공시 sendRedirect /freeList.do로 이동
				response.sendRedirect("/boardList.do?cpage=1");
			}
		} catch (Exception e) {
			response.sendRedirect("/views/common/error.jsp");
		}

	}

}
