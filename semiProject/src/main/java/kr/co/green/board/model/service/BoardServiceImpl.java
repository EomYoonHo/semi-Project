package kr.co.green.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.co.green.board.model.dao.BoardDAO;
import kr.co.green.board.model.dto.BoardDTO;
import kr.co.green.common.DatabaseConnection;
import kr.co.green.common.PageInfo;

public class BoardServiceImpl {
	private Connection con;
	private DatabaseConnection dc;
	private BoardDAO boardDAO;

	public BoardServiceImpl() {
		boardDAO = new BoardDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}

	// 게시글 목록 조회
	public ArrayList<BoardDTO> boardList(PageInfo pi, String searchText) {
		return boardDAO.boardList(con, pi, searchText);
	}

	// 전체 게시글 수
	public int boardListCount(String searchText) {
		return boardDAO.boardListCount(con,searchText);
	}

	// 글 등록
	public int boardEnroll(String b_title, String b_content, String b_file_path, String b_file_name, int m_no) {
		return boardDAO.boardEnroll(con, b_title, b_content, b_file_path, b_file_name, m_no);
	}

	// 조회수+1

	public int boardView(int b_idx) {
		return boardDAO.boardView(con, b_idx);
	}

	// 상세보기

	public void boardSelect(BoardDTO board) {
		boardDAO.boardSelect(con, board);
	}
	
	// 수정
	public int boardUpdate(int b_idx, String b_title, String b_content) {
		return boardDAO.boardUpdate(con, b_idx, b_title, b_content);
	};
	
	// 수정을위한 상세보기
	public void boardUpdateSelect(BoardDTO board) {
		boardDAO.boardUpdateSelect(con, board);
	}

	// 삭제
	public int boardDelete(int b_idx) {
		return boardDAO.boardDelete(con, b_idx);
	};

}
