package kr.co.green.myList.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.green.common.PageInfo;
import kr.co.green.myList.model.dto.MyListDTO;

public class MyListDAO {
	private PreparedStatement pstmt;
	
	// 게시글 목록 조회
		public ArrayList<MyListDTO> myList(Connection con, PageInfo pi, String searchText) {

			ArrayList<MyListDTO> list = new ArrayList<>();

			// 쿼리작성

			String query = "SELECT o_idx," 
					+ "			o_paid_amount,"
					+ "			o_period," 
					+ "			o_buyer_name" 
					+ "			o_paid_at"
					+ "		FROM orders"
					+ "	 	ORDER BY o_paid_at DESC";

			// 쿼리사용할준비
			try {
				pstmt = con.prepareStatement(query);

				// 쿼리실행
				ResultSet rs = pstmt.executeQuery();

				while (rs.next()) {
					int o_idx = rs.getInt("o_idX");
					String o_paid_amount = rs.getString("o_paid_amount");
					String o_period = rs.getString("o_period");
					String o_buyer_name = rs.getString("o_buyer_name");
					String o_paid_at = rs.getString("o_paid_at");

					MyListDTO myList = new MyListDTO();
					myList.setO_idx(o_idx);
					myList.setO_paid_amount(o_paid_amount);
					myList.setO_period(o_period);
					myList.setO_buyer_name(o_buyer_name);
					myList.setO_paid_at(o_paid_at);
					list.add(myList);
				}
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return list;

		}

		// 전체 게시글 수
		public int myListCount(Connection con, String searchText) {
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
