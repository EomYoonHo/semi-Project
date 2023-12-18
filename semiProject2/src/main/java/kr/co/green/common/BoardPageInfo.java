package kr.co.green.common;

public class BoardPageInfo {

		// ��ü �Խñ� ��
		private int listCount;	
		
		// ���� ������
		private int currentPage;
		
		// �� �������� ������ ������ ��
		private int pageLimit;
		
		// �� �������� �� �Խñ� ��
		private int boardLimit;
		
		// ��ü ������
		private int maxPage;
		
		// ���� ������
		private int startPage;
		
		// �� ������
		private int endPage;

		// ������
		private int offset;

		
		
		
		public BoardPageInfo(int listCount, 
							int currentPage, 
							int pageLimit, 
							int boardLimit, 
							int maxPage, 
							int startPage,
							int endPage, 
							int offset)
		{
			super();
			this.listCount = listCount;
			this.currentPage = currentPage;
			this.pageLimit = pageLimit;
			this.boardLimit = boardLimit;
			this.maxPage = maxPage;
			this.startPage = startPage;
			this.endPage = endPage;
			this.offset = offset;
		}
		
// getter setter
		
		
		public int getListCount() {
			return listCount;
		}

		public void setListCount(int listCount) {
			this.listCount = listCount;
		}

		public int getCurrentPage() {
			return currentPage;
		}

		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}

		public int getPageLimit() {
			return pageLimit;
		}

		public void setPageLimit(int pageLimit) {
			this.pageLimit = pageLimit;
		}

		public int getBoardLimit() {
			return boardLimit;
		}

		public void setBoardLimit(int boardLimit) {
			this.boardLimit = boardLimit;
		}

		public int getMaxPage() {
			return maxPage;
		}

		public void setMaxPage(int maxPage) {
			this.maxPage = maxPage;
		}

		public int getStartPage() {
			return startPage;
		}

		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}

		public int getEndPage() {
			return endPage;
		}

		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}

		public int getOffset() {
			return offset;
		}

		public void setOffset(int offset) {
			this.offset = offset;
		}
}
