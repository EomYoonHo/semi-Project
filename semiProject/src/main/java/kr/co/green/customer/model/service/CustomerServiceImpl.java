package kr.co.green.customer.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.common.PageInfo;
import kr.co.green.customer.model.dao.CustomerDAO;
import kr.co.green.customer.model.dto.CustomerDTO;

public class CustomerServiceImpl {
	private Connection con;
	private DatabaseConnection dc;
	private CustomerDAO customerDAO;
	
	
	public CustomerServiceImpl() {
		customerDAO = new CustomerDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}
	
	// 게시글 목록 조회
	public ArrayList<CustomerDTO> customerList(PageInfo pi, String searchText) {
		return customerDAO.customerList(con, pi, searchText);
	}

	// 전체 게시글 수
	public int customerListCount(String searchText) {
		return customerDAO.customerListCount(con,searchText);
	}
	// 글 등록
	public int customerEnroll(String cs_title, String cs_content,  int m_no) {
		return customerDAO.customerEnroll(con, cs_title, cs_content, m_no);
	}

	// 조회수+1
	public int customerView(int cs_idx) {
		return customerDAO.customerView(con, cs_idx);
	}
	
}
