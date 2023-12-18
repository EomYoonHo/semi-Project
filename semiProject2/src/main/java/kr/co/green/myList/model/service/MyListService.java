package kr.co.green.myList.model.service;

import java.util.ArrayList;

import kr.co.green.common.PageInfo;
import kr.co.green.myList.model.dto.MyListDTO;

public interface MyListService {
	// 주문 목록 조회
	public ArrayList<MyListDTO> myList(PageInfo pi, String searchText, int m_no, String m_type);

	// 전체 주무 수
	public int myListCount(String searchText);
}
