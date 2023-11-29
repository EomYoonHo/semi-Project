package kr.co.green.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.member.model.dto.MemberDTO;

public class MemberDAO {
	private PreparedStatement pstmt;

	// 로그인
	public MemberDTO memberLogin(Connection con, String email, String pwd) {

		String query = "SELECT M_NO,M_NAME,M_EMAIL,M_PWD,M_NICKNAME,M_IN_DATE" 
				+ "		FROM MEMBER"
				+ "		WHERE M_EMAIL=?" 
				+ "		AND M_PWD=?";

		MemberDTO result = new MemberDTO();

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int resultNo = rs.getInt("M_NO");
				String resultName = rs.getString("M_NAME");
				String resultEmail = rs.getString("M_EMAIL");
				String resultPwd = rs.getString("M_PWD");
				String resultNickname = rs.getString("M_NICKNAME");
				String resultIndate = rs.getString("M_IN_DATE");

				result.setM_no(resultNo);
				result.setM_name(resultName);
				result.setM_email(resultEmail);
				result.setM_pwd(resultPwd);
				result.setM_nickname(resultNickname);
				result.setM_in_date(resultIndate);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return result;

	}

	// 멤버추가
	public int memberEnroll(Connection con, MemberDTO memberDTO) {
		String query = "INSERT INTO MEMBER "
				+ "		VALUES(member_seq.NEXTVAL,"
				+ "					?,?,?,?,"
				+ "					SYSDATE)";
		int result = 0;
		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, memberDTO.getM_name());
			pstmt.setString(2, memberDTO.getM_email());
			pstmt.setString(3, memberDTO.getM_pwd());
			pstmt.setString(4, memberDTO.getM_nickname());

			result = pstmt.executeUpdate();

			pstmt.close();
			con.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return result;
	}

	// 멤버삭제
	public int memberDelete(Connection con, String name, String nickname) {
		String query = "DELETE FROM MEMBER" 
				+ "		WHERE M_NAME=?" 
				+ "		AND M_NICKNAME=?";
		
		int result = 0;
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, nickname);
			result = pstmt.executeUpdate();
			pstmt.close();
			con.close();

			return result;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	public boolean duplicateEmail(Connection con, String email) {
		String query = "SELECT M_EMAIL"
				+ "		FROM MEMBER"
				+ "		WHERE M_EMAIL";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			ResultSet rs = pstmt.executeQuery();
			return rs.next();
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return false;
	}

}
