package kr.co.green.member.model.dto;

public class MemberDTO {
	public MemberDTO() {
		super();
	}

	private int m_no;
	private String m_name;
	private String m_email;
	private String m_pwd;
	private String m_nickname;
	private String m_phone;
	private String m_in_date;
	


	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_pwd() {
		return m_pwd;
	}

	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}

	public String getM_nickname() {
		return m_nickname;
	}

	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}
	
	public String getM_phone() {
		return m_phone;
	}
	
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_in_date() {
		return m_in_date;
	}

	public void setM_in_date(String m_in_date) {
		this.m_in_date = m_in_date;
	}

	

}
