package kr.co.green.ReviewBoard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;
import kr.co.green.common.BoardPageInfo;
import kr.co.green.common.BoardPagination;


@WebServlet("/reviewBoardList.do")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ListController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cpage = Integer.parseInt(request.getParameter("cpage")); //���� ������
		
		String searchText = request.getParameter("searchText"); // �˻�
		
		ReviewBoardServiceImpl ReviewBoardService = new ReviewBoardServiceImpl();
		
		int listCount = ReviewBoardService.boardListCount(searchText);
		
		int pageLimit = 5; // ������ ������ ��
		
		int boardLimit = 5; // ���������� �� �Խñ� ��
		
		BoardPagination page = new BoardPagination();	// ������ ����¡ ó�� common
		
		BoardPageInfo pi = page.getPageInfo(listCount, cpage, pageLimit, boardLimit);
		
		ArrayList<ReviewBoardDTO> list = ReviewBoardService.boardList(pi, searchText);
		
		int row = listCount - (cpage-1) * boardLimit;
//		String star = request.getParameter("star");
		
		
		
		request.setAttribute("row", row);
		
		request.setAttribute("searchText", searchText); // �˻�
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("/views/reviewboard/review.jsp");
		view.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
