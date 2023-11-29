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
		
		int cpage = Integer.parseInt(request.getParameter("cpage")); //현재 페이지
		
		String searchText = request.getParameter("searchText"); // 검색
		
		ReviewBoardServiceImpl ReviewBoardService = new ReviewBoardServiceImpl();
		
		int listCount = ReviewBoardService.boardListCount(searchText);
		
		int pageLimit = 5; // 보여질 페이지 수
		
		int boardLimit = 5; // 한페이지에 들어갈 게시글 수
		
		BoardPagination page = new BoardPagination();	// 나머지 페이징 처리 common
		
		BoardPageInfo pi = page.getPageInfo(listCount, cpage, pageLimit, boardLimit);
		
		ArrayList<ReviewBoardDTO> list = ReviewBoardService.boardList(pi, searchText);
		
		int row = listCount - (cpage-1) * boardLimit;
//		String star = request.getParameter("star");
		
		
		
		request.setAttribute("row", row);
		
		request.setAttribute("searchText", searchText); // 검색
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("/views/reviewboard/review.jsp");
		view.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
