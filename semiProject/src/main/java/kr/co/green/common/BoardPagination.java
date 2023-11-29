package kr.co.green.common;

public class BoardPagination {

	
public static BoardPageInfo getPageInfo(int listCount, int currentPage, int pageLimit, int boardLimit){
		
		// ��ü ������ ���ϱ�
		
		// listCount : 101, boardlimit : 5
		// ������ �� ��Ȯ�� �������� ���� (int ����)
		// double�� ����ȯ�ؼ� �Ҽ������� ������ �� �� �ֵ���
		// Math.ceil : �Ҽ��� ������ ���� �� �Ҽ����� �ø� ó��
		int maxPage = (int)Math.ceil((double)listCount/boardLimit);
	
		// ���� ������ ���ϱ�
		// ��Ȳ ������ 10���� �����ش�, ����ڰ� 16�������� �����ִ�.
		// currentPage = 16, pageLimit = 10
		// (currentPage-1) : (16-1) = 15
		// (currentPage-1) / pageLimit
		// 15/10 = 1
		
		// (currentPage-1) / pageLimit * pageLimit
		// 1 * 10 = 10
		
		// (currentPage-1) / pageLimit * pageLimit+1
		// 10 + 1 = 11
		int startPage = (currentPage-1) / pageLimit * pageLimit+1;
	
		
		// �������� ���ϱ�
		// startPage : 11, pageLimit : 10
		int endPage = startPage + pageLimit -1;
		
		// ���������� ��ü���������� Ŭ ��
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		
		// ���� ������ 2 
		// 1 * 5= 5
		
		int offset = (currentPage-1) * boardLimit;
		
//		if(currentPage==1) {
//		boardLimit = offset+5;
//		} else {
//		boardLimit = offset+4;
//		}
//		
		
		BoardPageInfo pi = new BoardPageInfo(listCount,currentPage,pageLimit,boardLimit,maxPage,startPage,endPage,offset);
		return pi;
		
	}
	
	
	
}
