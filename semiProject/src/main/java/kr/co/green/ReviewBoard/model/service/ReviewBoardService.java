package kr.co.green.ReviewBoard.model.service;

import java.util.ArrayList;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.common.BoardPageInfo;

public interface ReviewBoardService {
	
	//게시글 목록 
	public ArrayList<ReviewBoardDTO> boardList(BoardPageInfo pi, String searchText);
	
	// 전체 게시글 수
	public int boardListCount(String searchText);
	
	// 게시글 추가	
	public int boardEnroll (String title, String content, String star, int mno);
	
	// 조회수 +1
	public int boardView(int idx);
	
	// 상세보기
	public void boardSelect(ReviewBoardDTO reviewboard) ;
	
	// 수정
	public int boardUpdate(int idx, String title, String content, String star);
	
	// 삭제
	public int boardDelete(int idx);
}
