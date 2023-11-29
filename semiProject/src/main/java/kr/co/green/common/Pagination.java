package kr.co.green.common;

public class Pagination {
	public static PageInfo getPageInfo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		
		//전체 페이지 구하기
		//listCount :101 , boardLimit :5 라면
		//소수점이 나온다. 그래서 소수점까지 가져오도록 double 형 사용
		//Math.ceil : 소수점을 올림처리함.
		int maxPage = (int)Math.ceil((double)listCount/boardLimit);
		
		//시작 페이지 구하기
		//currentPage = 16 pageLimit = 10 이면
		//(currentPage-1) : 15
		// (currentPage-1)/pageLimit
		// 15/10 = 1
		//(currentPage-1)/pageLimit*pageLimit
		//1*10 = 10
		//(currentPage-1)/pageLimit*pageLimit+1
		//10+1 = 11
		int startPage = (currentPage-1)/pageLimit*pageLimit+1;
		
		
		//끝 페이지 구하기
		//startPage : 11, pageLimit : 10 일때
		int endPage = startPage + pageLimit -1;
		
		//끝 페이지가 전체 페이지보다 클 때
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		
		//한페이지에 보여줄 게시글 수 : 10
		//현재 페이지 1이라면
		//1~10까지의 게시글을 가져와야함
		int offset = (currentPage -1)*boardLimit;
		
		//5개씩 1페이지일때 기준
//		if(currentPage==1) {
//			boardLimit = offset+5;
//		}else {
//			boardLimit = offset+4;
//		}
		
		
		
		
		
		PageInfo pi = new PageInfo(listCount,currentPage,pageLimit,boardLimit,
									maxPage,startPage,endPage,offset);
		
		return pi;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
