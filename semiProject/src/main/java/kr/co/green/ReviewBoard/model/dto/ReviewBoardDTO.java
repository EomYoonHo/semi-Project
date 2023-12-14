package kr.co.green.ReviewBoard.model.dto;

public class ReviewBoardDTO {

	private int idx;  // �Խñ� ��ȣ
	private String title;  //�Խñ� ����
	private String content;  //�Խñ� ����
	private String indate;  //�Խñ� �ۼ���
	private String updateDate;  // �Խñ� ������
	private String deleteDate;  // �Խñ� ������
	private int views;  // �Խñ� ��ȸ��
	private String nickName;  // �ۼ��� �г���
	private String star; // ���� ��
	private int mno;
	
	
	
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
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	
	
}
