package kr.co.green.customer.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.customer.model.dto.CustomerDTO;
import kr.co.green.customer.model.service.CustomerServiceImpl;


@WebServlet("/customerDetail.do")
public class CustomerDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CustomerDetailController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		CustomerServiceImpl customerService = new CustomerServiceImpl();
		int result = customerService.customerView(idx);  // 조회수
		
		if(result > 0) {
			CustomerDTO customerDTO = new CustomerDTO();
			customerDTO.setCs_idx(idx);
			
			customerService.customerSelect(customerDTO);
			
			
			if(!Objects.isNull(customerDTO.getCs_idx())) {
				request.setAttribute("customerDTO", customerDTO);
				RequestDispatcher view = request.getRequestDispatcher("/views/customer/customerDetail.jsp");
				view.forward(request, response);
			}
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
