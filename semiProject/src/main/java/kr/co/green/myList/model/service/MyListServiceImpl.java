package kr.co.green.myList.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.common.PageInfo;
import kr.co.green.myList.model.dao.MyListDAO;
import kr.co.green.myList.model.dto.MyListDTO;

public class MyListServiceImpl {
	private Connection con;
	private DatabaseConnection dc;
	private MyListDAO myListDAO;

	public MyListServiceImpl() {
		myListDAO = new MyListDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}

	// 게시글 목록 조회
	public ArrayList<MyListDTO> myList(PageInfo pi, String searchText, int m_no, String m_type) {
		return myListDAO.myList(con, pi, searchText, m_no, m_type);
	}

	// 전체 게시글 수
	public int myListCount(String searchText) {
		return myListDAO.myListCount(con,searchText);
	}
}
