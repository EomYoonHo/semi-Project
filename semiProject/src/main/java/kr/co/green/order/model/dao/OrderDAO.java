package kr.co.green.order.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.order.model.dto.OrderDTO;

public class OrderDAO {
	private PreparedStatement pstmt;

	public int orderEnroll(Connection con, OrderDTO orderDTO) {
		String query= "INSERT INTO orders "
				+ "VALUES(orders_seq.nextval,"
				+ "			?,?,?,?,?,?,?,?,"
				+ "			SYSDATE)";
		
		int result= 0;
		
		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, orderDTO.getO_imp_uid());
			pstmt.setString(2, orderDTO.getO_merchant_uid());
			System.out.println(orderDTO.getO_name());
			pstmt.setString(3, orderDTO.getO_name());
			pstmt.setInt(4, orderDTO.getO_paid_amount());
			pstmt.setString(5, orderDTO.getO_buyer_phone());
			pstmt.setString(6, orderDTO.getO_buyer_name());
			pstmt.setString(7, orderDTO.getO_buyer_email());
			pstmt.setString(8, orderDTO.getO_period());
			

			result = pstmt.executeUpdate();

			pstmt.close();
			con.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return result;
	}

	public OrderDTO selectOrder(Connection con, String o_imp_uid) {
		String query ="SELECT o_idx,"
				+ "					o_imp_uid,"
				+ "					o_merchant_uid,"
				+ "					o_name,"
				+ "					o_paid_amount,"
				+ "					o_buyer_phone,"
				+ "					o_buyer_name,"
				+ "					o_buyer_email,"
				+ "					o_period,"
				+ "					o_paid_at"
				+ "					FROM orders"
				+ "		WHERE o_imp_uid= ?";
		
		OrderDTO result = new OrderDTO();

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, o_imp_uid);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int o_idx = rs.getInt("o_idx");
				// o_imp_uid
				String o_merchant_uid = rs.getString("o_merchant_uid");
				String o_name = rs.getString("o_name");
				int o_paid_amount = rs.getInt("o_paid_amount");
				String o_buyer_phone = rs.getString("o_buyer_phone");
				String o_buyer_name = rs.getString("o_buyer_name");
				String o_buyer_email = rs.getString("o_buyer_email");
				String o_period = rs.getString("o_period");
				String o_paid_at = rs.getString("o_paid_at");
			

				result.setO_idx(o_idx);
				result.setO_imp_uid(o_imp_uid);
				result.setO_merchant_uid(o_merchant_uid);
				result.setO_name(o_name);
				result.setO_paid_amount(o_paid_amount);
				result.setO_buyer_phone(o_buyer_phone);
				result.setO_buyer_name(o_buyer_name);
				result.setO_buyer_email(o_buyer_email);
				result.setO_period(o_period);
				result.setO_paid_at(o_paid_at);
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return result;
	}

}
