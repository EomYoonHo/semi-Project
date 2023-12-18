package kr.co.green.point.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.point.model.dto.PointDTO;

public class PointDAO {
	private PreparedStatement pstmt;

	public int pointEnroll(Connection con, int m_no) {
		String query = "INSERT INTO points"
				+ "		  values(point_seq.nextval,"
				+ "					0,"
				+ "					?)";
		int result = 0;

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, m_no);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public PointDTO selectPoint(Connection con, int m_no) {
		String qeury ="SELECT P_NO,"
				+ "				   P_BALANCE,"
				+ "				   M_NO "
				+ "		 FROM POINTS "
				+ "		 WHERE M_NO= ? ";
		
		PointDTO points =new PointDTO();
		
		try {
			pstmt = con.prepareStatement(qeury);
			pstmt.setInt(1, m_no);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int P_NO = rs.getInt("P_NO");
				int P_BALANCE = rs.getInt("P_BALANCE");
				points.setP_no(P_NO);
				points.setP_balance(P_BALANCE);
				points.setM_no(m_no);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return points;
	}

	public int pointIncrease(Connection con, int o_point, int p_no) {
		String qeury = "INSERT INTO POINT_MODIFICATION "
				+ "		  values(PM_SEQ.nextval,"
				+ "					  'plus',"
				+ "						?,"
				+ "						?)";

		int result = 0;

		try {
			pstmt = con.prepareStatement(qeury);
			pstmt.setInt(1, o_point);
			pstmt.setInt(2, p_no);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return result;
	}
	
	public int pointMinus(Connection con, int o_point, int p_no) {
		String qeury = "INSERT INTO POINT_MODIFICATION "
				+ "		  values(PM_SEQ.nextval,"
				+ "					  'minus',"
				+ "						?,"
				+ "						?)";
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(qeury);
			pstmt.setInt(1, o_point);
			pstmt.setInt(2, p_no);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public PointDTO selectPM(Connection con, int p_no) {
		String qeury ="SELECT PM_SEQ,"
				+ "				   PM_TYPE,"
				+ "				   PM_AMOUNT,"
				+ "				   P_NO "
				+ "		 FROM POINT_MODIFICATION "
				+ "		 WHERE P_NO = ?"
				+ "		 ORDER BY PM_SEQ DESC "
				+ "		 FETCH FIRST 1 ROW ONLY";

		PointDTO result = new PointDTO();
		
		try {
			pstmt =con.prepareStatement(qeury);
			pstmt.setInt(1, p_no);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int PM_SEQ =rs.getInt("PM_SEQ");
				String PM_TYPE =rs.getString("PM_TYPE");
				int PM_AMOUNT =rs.getInt("PM_AMOUNT");
				result.setPm_seq(PM_SEQ);
				result.setPm_type(PM_TYPE);
				result.setPm_amount(PM_AMOUNT);
				result.setP_no(p_no);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	public int pointUpdate(Connection con, int pointchange, int p_no) {
		String qeury ="UPDATE POINTS "
				+ "		 SET P_BALANCE = ? "
				+ "		 WHERE P_NO =?";
		
		
		int result = 0;

		try {
			pstmt = con.prepareStatement(qeury);
			pstmt.setInt(1, pointchange);
			pstmt.setInt(2, p_no);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}


}
