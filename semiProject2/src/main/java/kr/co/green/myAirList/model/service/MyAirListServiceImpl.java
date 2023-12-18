package kr.co.green.myAirList.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.common.PageInfo;
import kr.co.green.myAirList.model.dao.MyAirListDAO;
import kr.co.green.myAirList.model.dto.MyAirListDTO;

public class MyAirListServiceImpl {
	private Connection con;
	private DatabaseConnection dc;
	private MyAirListDAO myAirListDAO;

	public MyAirListServiceImpl() {
		myAirListDAO = new MyAirListDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}
	
	// 게시글 목록 조회
	public ArrayList<MyAirListDTO> myAirList(PageInfo pi, String searchText, int m_no, String m_type) {
		return myAirListDAO.myAirList(con, pi, searchText, m_no, m_type);
	}

	// 전체 게시글 수
	public int myAirListCount(String searchText) {
		return myAirListDAO.myAirListCount(con,searchText);
	}
}
