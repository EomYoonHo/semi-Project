package kr.co.green.myList.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.common.PageInfo;
import kr.co.green.common.Pagination;
import kr.co.green.myList.model.dto.MyListDTO;
import kr.co.green.myList.model.service.MyListServiceImpl;
import kr.co.green.order.model.dto.OrderDTO;


@WebServlet("/MyList.do")
public class MyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MyListController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// cpage = 현재 페이지
		int cpage = Integer.parseInt(request.getParameter("cpage"));
//		System.out.println(cpage);
		MyListServiceImpl myListService = new MyListServiceImpl();
		// 게시글 검색
		String searchText = request.getParameter("searchText");
		// 전체 게시글 수
		int listCount = myListService.myListCount(searchText);
//		System.out.println(listCount);
		// 보여질 페이지 수
		int pageLimit = 10;
		// 한 페이지에 들어갈 게시글 수(0~4)5개
		int boardLimit = 10;
		// 나머지 페이징 처리는 common

		// 페이징처리
		Pagination page = new Pagination();
		PageInfo pi = page.getPageInfo(listCount, cpage, pageLimit, boardLimit);

		HttpSession session = request.getSession();
		int m_no= (int) session.getAttribute("m_no");
		
		
		String m_type = (String) session.getAttribute("m_type");
		// 목록 불러오기
		
		ArrayList<MyListDTO> list = myListService.myList(pi, searchText, m_no, m_type);
		
		int row = listCount - (cpage - 1) * boardLimit;
		request.setAttribute("row", row);
		request.setAttribute("searchText", searchText);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		System.out.println("나의 넘버"+m_no);
		
		
//		System.out.println("오더넘버"+ordernum);
		RequestDispatcher view = request.getRequestDispatcher("/views/myPage/myList.jsp");
		view.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
