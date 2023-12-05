package kr.co.green.customer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.customer.model.service.CustomerServiceImpl;


@WebServlet("/customerDelete.do")
public class CustomerDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CustomerDeleteController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		CustomerServiceImpl customerService = new CustomerServiceImpl();
		
		int result = customerService.customerDelete(idx);
		
		if(result > 0) {
			response.sendRedirect("/customerList.do?cpage=1");
		}
	}

}
