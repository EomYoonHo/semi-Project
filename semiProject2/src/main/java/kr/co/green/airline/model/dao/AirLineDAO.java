package kr.co.green.airline.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.airline.model.dto.AirLineDTO;

public class AirLineDAO {
	private PreparedStatement pstmt;

	public int airLineEnroll(Connection con, AirLineDTO airlineDTO) {
		String query = "INSERT INTO airline_Ticket " 
				+ "		values(at_seq.nextval," + "					?,"
				+ "					?," 
				+ "					?," 
				+ "					?," 
				+ "					?,"
				+ "					?," 
				+ "					?," 
				+ "					?," 
				+ "				sysdate,"
				+ "					?," 
				+ "					?)";

		int result = 0;

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, airlineDTO.getAt_godate());
			pstmt.setString(2, airlineDTO.getAt_backdate());
			pstmt.setString(3, airlineDTO.getAt_starting_point());
			pstmt.setString(4, airlineDTO.getAt_destination());
			pstmt.setString(5, airlineDTO.getAt_airLine());
			pstmt.setInt(6, airlineDTO.getAt_people());
			pstmt.setInt(7, airlineDTO.getAt_price_per());
			pstmt.setInt(8, airlineDTO.getAt_all_price());
			pstmt.setString(9, airlineDTO.getAt_imp_uid());
			pstmt.setInt(10, airlineDTO.getM_no());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public AirLineDTO selectAirLine(Connection con, String at_imp_uid) {
		
		String query ="SELECT at_no,"
				+ "					at_godate,"
				+ "					at_backdate,"
				+ "					at_starting_point,"
				+ "					at_destination,"
				+ "					at_airline,"
				+ "					at_people,"
				+ "					at_price_per,"
				+ "					at_all_price,"
				+ "					at_buydate,"
				+ "					at_imp_uid,"
				+ "					m_no "
				+ "		FROM airline_Ticket "
				+ "		WHERE AT_IMP_UID =?";
		
		AirLineDTO result = new AirLineDTO();
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,at_imp_uid);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int at_no = rs.getInt("at_no");
				String at_godate = rs.getString("at_godate");
				String at_backdate = rs.getString("at_backdate");
				String at_starting_point = rs.getString("at_starting_point");
				String at_destination = rs.getString("at_destination");
				String at_airline = rs.getString("at_airline");
				int at_people = rs.getInt("at_people");
				int at_price_per = rs.getInt("at_price_per");
				int at_all_price = rs.getInt("at_all_price");
				String at_buydate = rs.getString("at_buydate");
				// String at_imp_uid = rs.getString("at_imp_uid");
				int m_no = rs.getInt("m_no");

				result.setAt_no(at_no);
				result.setAt_godate(at_godate);
				result.setAt_backdate(at_backdate);
				result.setAt_starting_point(at_starting_point);
				result.setAt_destination(at_destination);
				result.setAt_airLine(at_airline);
				result.setAt_people(at_people);
				result.setAt_price_per(at_price_per);
				result.setAt_all_price(at_all_price);
				result.setAt_buydate(at_buydate);
				result.setAt_imp_uid(at_imp_uid);
				result.setM_no(m_no);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return result;

	}

}
