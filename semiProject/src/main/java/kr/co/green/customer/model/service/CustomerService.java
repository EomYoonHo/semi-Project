package kr.co.green.customer.model.service;

import java.util.ArrayList;

import kr.co.green.common.PageInfo;
import kr.co.green.customer.model.dto.CustomerDTO;

public interface CustomerService {
	// 게시글 목록 조회
	public ArrayList<CustomerDTO> customerList(PageInfo pi, String searchText);

	// 전체 게시글 수
	public int customerListCount(String searchText);
	
	// 글 등록
	public int customerEnroll(String cs_title, String cs_content, int m_no);
	
	// 조회수+1
	public int customerView(int cs_idx);
}
