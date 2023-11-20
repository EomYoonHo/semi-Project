package kr.co.green.board.model.service;

import java.util.ArrayList;

import kr.co.green.board.model.dto.BoardDTO;
import kr.co.green.common.PageInfo;

public interface BoardService {
	// 게시글 목록 조회
	public ArrayList<BoardDTO> boardList(PageInfo pi, String searchText);

	// 전체 게시글 수
	public int boardListCount(String searchText);

	// 글 등록
	public int boardEnroll(String b_title, String b_content, String b_file_path, String b_file_name, int m_no);

	// 조회수+1
	public int boardView(int b_idx);

	// 상세보기
//	public void boardSelect(BoradDTO board);
}
