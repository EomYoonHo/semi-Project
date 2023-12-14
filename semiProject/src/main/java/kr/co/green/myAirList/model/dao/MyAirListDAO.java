package kr.co.green.myAirList.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.green.common.PageInfo;
import kr.co.green.myAirList.model.dto.MyAirListDTO;

public class MyAirListDAO {
	private PreparedStatement pstmt;
	
	// 게시글 목록 조회
		public ArrayList<MyAirListDTO> myAirList(Connection con, PageInfo pi, String searchText, int m_no, String m_type) {

			ArrayList<MyAirListDTO> list = new ArrayList<>();

			// 쿼리작성

			String query = "SELECT at_airline," 
					+ "			at_all_price,"
					+ "			at_godate," 
					+ "			at_backdate," 
					+ "			at_buydate"
					+ "		FROM airline_ticket at"
					+ "		JOIN MEMBER M ON AT.M_NO = M.M_NO ";				
			
			if(!m_type.equals("0")) {
				query += "		WHERE AT.m_no = ?"
					   + "	 	ORDER BY at_buydate DESC";
			}  else if(m_type.equals("0")) {
				query += "ORDER BY at_buydate DESC";
			}

			// 쿼리사용할준비
			try {
				pstmt = con.prepareStatement(query);
				if(!m_type.equals("0")) {
					pstmt.setInt(1, m_no);
				}
				// 쿼리실행
				ResultSet rs = pstmt.executeQuery();

				while (rs.next()) {
					String at_airline = rs.getString("at_airline");
					int at_all_price = rs.getInt("at_all_price");
					String at_godate = rs.getString("at_godate");
					String at_backdate = rs.getString("at_backdate");
					String at_buydate = rs.getString("at_buydate");
					

					MyAirListDTO myAirList = new MyAirListDTO();
					myAirList.setAt_airline(at_airline);
					myAirList.setAt_all_price(at_all_price);
					myAirList.setAt_godate(at_godate);
					myAirList.setAt_backdate(at_backdate);
					myAirList.setAt_buydate(at_buydate);
//					myList.setM_no(m_no);
					list.add(myAirList);
					
					
				}
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}

			return list;

		}

		// 전체 게시글 수
		public int myAirListCount(Connection con, String searchText) {
			String query = "SELECT count(*) AS cnt "
					+ "	FROM orders ";
			try {
				pstmt = con.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					int result = rs.getInt("CNT");//////////////여기
					return result;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 0;
		}
}
