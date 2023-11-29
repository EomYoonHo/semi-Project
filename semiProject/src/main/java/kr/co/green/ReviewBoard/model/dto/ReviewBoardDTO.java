package kr.co.green.ReviewBoard.model.dto;

public class ReviewBoardDTO {

	private int idx;  // 게시글 번호
	private String title;  //게시글 제목
	private String content;  //게시글 내용
	private String indate;  //게시글 작성일
	private String updateDate;  // 게시글 수정일
	private String deleteDate;  // 게시글 삭제일
	private int views;  // 게시글 조회수
	private String nickName;  // 작성자 닉네임
	private String star; // 리뷰 별
	
	
	
	
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getDeleteDate() {
		return deleteDate;
	}
	public void setDeleteDate(String deleteDate) {
		this.deleteDate = deleteDate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	
}
