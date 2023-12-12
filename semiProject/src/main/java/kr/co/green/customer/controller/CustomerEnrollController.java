package kr.co.green.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.customer.model.service.CustomerServiceImpl;


@WebServlet("/customerEnroll.do")
public class CustomerEnrollController extends HttpServlet {

	private static final long serialVersionUID = 1L;

    public CustomerEnrollController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
		//1.내용,제목 받기
		String cs_title = request.getParameter("cs_title");
		String cs_content = request.getParameter("cs_content");
		
		//2.세션에 있는 name 꺼내기
		HttpSession session = request.getSession();
		int m_no = (int)session.getAttribute("m_no");

		//3.서비스호출
		CustomerServiceImpl customerService = new CustomerServiceImpl();
		int result = customerService.customerEnroll(cs_title, cs_content, m_no);
		

		//4.성공 유무에 따라 처리
		if(result>0) {
			response.sendRedirect("/customerList.do?cpage=1");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
	        System.out.println("문의등록실패");
		}
		
		
	}

}

