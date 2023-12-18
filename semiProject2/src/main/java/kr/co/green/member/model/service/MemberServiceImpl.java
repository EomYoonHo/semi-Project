package kr.co.green.member.model.service;

import java.sql.Connection;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.member.model.dao.MemberDAO;
import kr.co.green.member.model.dto.MemberDTO;

public class MemberServiceImpl implements MemberService {
	private Connection con;
	private DatabaseConnection dc;
	private MemberDAO memberDAO;

	public MemberServiceImpl() {
		memberDAO = new MemberDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}

	@Override
	public MemberDTO memberLogin(String email) {
		return memberDAO.memberLogin(con, email);
	}

	@Override
	public int memberEnroll(MemberDTO memberDTO) {
		return memberDAO.memberEnroll(con, memberDTO);
	}

	@Override
	public int memberDelete(String name, String nickname) {
		return memberDAO.memberDelete(con, name, nickname);
	}

	@Override
	public boolean duplicateEmail(String email) {
		return memberDAO.duplicateEmail(con, email);
	}

	@Override
	public void selectMember(MemberDTO memberDTO) {
		memberDAO.selectMember(con, memberDTO);
	}

	@Override
	public MemberDTO retrieveMember(String email) {
		return memberDAO.retrieveMember(con, email);
	}

	@Override
	public int memberUpdate(MemberDTO memberdto) {

		return memberDAO.memberUpdate(con, memberdto);
	}

	public int passwordChange(String hashedPassword, String email) {
		
		return memberDAO.passwordChange(con,hashedPassword,email);
	}

}
