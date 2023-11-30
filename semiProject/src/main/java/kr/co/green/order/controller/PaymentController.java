package kr.co.green.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.order.model.dto.OrderDTO;


@WebServlet("/payment.do")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PaymentController() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		String imp_uid =request.getParameter("imp_uid");
		String merchant_uid =request.getParameter("merchant_uid");
		String name = request.getParameter("name");
		
		OrderDTO orderDTO= new OrderDTO();
//		orderDTO.setImp_uid(imp_uid);
//		orderDTO.setMerchant_uid(merchant_uid);
//		orderDTO.setName(name);
//	
	}

}
