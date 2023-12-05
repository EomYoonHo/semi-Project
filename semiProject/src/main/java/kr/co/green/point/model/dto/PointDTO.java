package kr.co.green.point.model.dto;

public class PointDTO {
	private int p_no;
	private int p_balance;
	private int m_no;
	private int pm_seq;
	private String pm_type;
	private int pm_amount;

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getPm_seq() {
		return pm_seq;
	}

	public void setPm_seq(int pm_seq) {
		this.pm_seq = pm_seq;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getP_balance() {
		return p_balance;
	}

	public void setP_balance(int p_balance) {
		this.p_balance = p_balance;
	}

	public int getPm_amount() {
		return pm_amount;
	}

	public void setPm_amount(int pm_amount) {
		this.pm_amount = pm_amount;
	}

	public String getPm_type() {
		return pm_type;
	}

	public void setPm_type(String pm_type) {
		this.pm_type = pm_type;
	}
}
