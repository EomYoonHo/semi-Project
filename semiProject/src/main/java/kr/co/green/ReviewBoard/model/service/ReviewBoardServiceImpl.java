package kr.co.green.ReviewBoard.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.co.green.ReviewBoard.model.dao.ReviewBoardDAO;
import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.common.BoardPageInfo;
import kr.co.green.common.DatabaseConnection;

public class ReviewBoardServiceImpl implements ReviewBoardService {
	private Connection con;
	private DatabaseConnection dc;
	private ReviewBoardDAO ReviewBoardDAO;
	
	public ReviewBoardServiceImpl() {
		ReviewBoardDAO = new ReviewBoardDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}
	
	
	
	@Override
	public ArrayList<ReviewBoardDTO> boardList(BoardPageInfo pi, String searchText) {
		return ReviewBoardDAO.boardList(con,pi,searchText);
	}

	@Override
	public int boardListCount(String searchText) {	
		return ReviewBoardDAO.boardListCount(con,searchText);
	}
	
	@Override
	public int boardEnroll(String title, String content, String star) {	
		return ReviewBoardDAO.boardEnroll(con,title,content,star);
	}

	@Override
	public int boardView(int idx) {		
		return ReviewBoardDAO.boardView(con, idx);
	}

	@Override
	public void boardSelect(ReviewBoardDTO reviewboard) {
		ReviewBoardDAO.boardSelect(con,reviewboard);
	}


	@Override
	public int boardUpdate(int idx, String title, String content, String star, String fileName, String uploadDirectory) {
		return ReviewBoardDAO.boardUpdate(con, idx, title, content, star, fileName, uploadDirectory);
	}

	@Override
	public int boardDelete(int idx) {
		return ReviewBoardDAO.boardDelete(con,idx);
	}

}
