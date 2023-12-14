package kr.co.green.myAirList.model.service;

import java.util.ArrayList;

import kr.co.green.common.PageInfo;
import kr.co.green.myAirList.model.dto.MyAirListDTO;

public interface MyAirListService {
	// 예매 목록 조회
	public ArrayList<MyAirListDTO> myAirList(PageInfo pi, String searchText, int m_no, String m_type);

	// 전체 예매 수
	public int myAirListCount(String searchText);
}
