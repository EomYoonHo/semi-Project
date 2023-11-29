package kr.co.green.ReviewBoard.model.service;

import java.util.ArrayList;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.common.BoardPageInfo;

public interface ReviewBoardService {
	
	//�Խñ� ��� 
	public ArrayList<ReviewBoardDTO> boardList(BoardPageInfo pi, String searchText);
	
	// ��ü �Խñ� ��
	public int boardListCount(String searchText);
	
	// �Խñ� �߰�	
	public int boardEnroll (String title, String content, String star, int mno);
	
	// ��ȸ�� +1
	public int boardView(int idx);
	
	// �󼼺���
	public void boardSelect(ReviewBoardDTO reviewboard) ;
	
	// ����
	public int boardUpdate(int idx, String title, String content, String star);
	
	// ����
	public int boardDelete(int idx);
}
