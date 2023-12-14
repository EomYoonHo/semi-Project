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


@WebServlet("/boardUpdate.do")
public class BoardUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardUpdateController() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		//1. 값 받기 (idx, 제목, 내용)
		int b_idx = Integer.parseInt(request.getParameter("b_idx"));
		String b_title = request.getParameter("b_title");
		String b_content = request.getParameter("b_content");
		
		try {
		int m_no = (int) session.getAttribute("m_no");
		//2. 서비스 호출(DTO or 매개변수)
		BoardServiceImpl boardService = new BoardServiceImpl();
		BoardDTO boardDTO = new BoardDTO();//이거 안해도된다 DTO 대신 매개변수 썼기때문에.
		
		int result = boardService.boardUpdate(b_idx,b_title,b_content);
		//3. 성공유무에 따라 처리
		if(result == 0) {
			//실패시 /views/common/error.jsp
			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
		}else {
			//성공시 sendRedirect /freeList.do로 이동
			session.removeAttribute("b_title");
			session.removeAttribute("b_content");
			session.setAttribute("b_title", boardDTO.getB_title());
			session.setAttribute("b_content", boardDTO.getB_content());
			
			response.sendRedirect("/boardList.do?cpage=1");
		}
		}catch (Exception e) {
			response.sendRedirect("/views/common/error.jsp");
		}
		
		//RequestDispatcher : 호출할 페이지가 jsp일때
		//response.sendRedirect : 호출할 페이지가 COntroller일때		

		
		
		
	}
}
