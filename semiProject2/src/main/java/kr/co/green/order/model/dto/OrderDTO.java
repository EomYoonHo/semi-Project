package kr.co.green.order.model.dto;

public class OrderDTO {
	private boolean success;// 결제 성공여부
	private String status;// 결제상태
	private String pg_provider;// pg 구분코드?
	private String pay_method;// 결제수단 구분
	private String currency;// 통화
	private String o_merchant_uid;// 주문 번호

	
	
	
	
	private int o_idx;// 키

	private String o_imp_uid;// 포트원 고유 결제 번호
	private int o_people;// 인원수
	private int o_paid_amount;// 결제금액
	private int o_point;// 포인트//결제금액 1%

	private int p_idx;// 패키지 키
	private String o_name;// 상품이름

	private int m_no;// 멤버 키
	private String o_buyer_phone;// 구매자 전번
	private String o_buyer_name;// 구매자 이름
	private String o_buyer_email;// 구매자 이메일
	
	private String o_period;// 여행기간

	private String o_paid_at;// 결제 시각
	// o_paid_at

	public int getO_people() {
		return o_people;
	}

	public void setO_people(int o_people) {
		this.o_people = o_people;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getO_point() {
		return o_point;
	}

	public void setO_point(int o_point) {
		this.o_point = o_point;
	}

	public int getO_idx() {
		return o_idx;
	}

	public void setO_idx(int o_idx) {
		this.o_idx = o_idx;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPg_provider() {
		return pg_provider;
	}

	public void setPg_provider(String pg_provider) {
		this.pg_provider = pg_provider;
	}

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public int getO_paid_amount() {
		return o_paid_amount;
	}

	public void setO_paid_amount(int o_paid_amount) {
		this.o_paid_amount = o_paid_amount;
	}

	public String getO_name() {
		return o_name;
	}

	public void setO_name(String o_name) {
		this.o_name = o_name;
	}

	public String getO_merchant_uid() {
		return o_merchant_uid;
	}

	public void setO_merchant_uid(String o_merchant_uid) {
		this.o_merchant_uid = o_merchant_uid;
	}

	public String getO_imp_uid() {
		return o_imp_uid;
	}

	public void setO_imp_uid(String o_imp_uid) {
		this.o_imp_uid = o_imp_uid;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getO_buyer_phone() {
		return o_buyer_phone;
	}

	public void setO_buyer_phone(String o_buyer_phone) {
		this.o_buyer_phone = o_buyer_phone;
	}

	public String getO_buyer_name() {
		return o_buyer_name;
	}

	public void setO_buyer_name(String o_buyer_name) {
		this.o_buyer_name = o_buyer_name;
	}

	public String getO_buyer_email() {
		return o_buyer_email;
	}

	public void setO_buyer_email(String o_buyer_email) {
		this.o_buyer_email = o_buyer_email;
	}

	public String getO_period() {
		return o_period;
	}

	public void setO_period(String o_period) {
		this.o_period = o_period;
	}

	public String getO_paid_at() {
		return o_paid_at;
	}

	public void setO_paid_at(String o_paid_at) {
		this.o_paid_at = o_paid_at;
	}

	public int getP_idx() {
		return p_idx;
	}

	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
	}

}
