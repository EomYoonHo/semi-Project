package kr.co.green.customer.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.green.common.PageInfo;
import kr.co.green.customer.model.dto.CustomerDTO;

public class CustomerDAO {
	private PreparedStatement pstmt;
	
	// 게시글 목록 조회
	   public ArrayList<CustomerDTO> customerList(Connection con, PageInfo pi, String searchText) {

	      ArrayList<CustomerDTO> list = new ArrayList<>();

	      // 1.쿼리작성

	      String query = "SELECT c.cs_idx," 
	            + "         c.cs_title," 
	            + "         m.m_name," 
	            + "         c.cs_reply_check"
	            + "      FROM customer c"
	            + "      JOIN MEMBER m"
	            + "      ON c.m_no=m.m_no"
	            + "      WHERE cs_DELETE_DATE IS NULL" 
	            + "       ORDER BY cs_in_date DESC";

	      // 2.쿼리사용할준비
	      try {
	         pstmt = con.prepareStatement(query);

	         // 4.쿼리실행
	         ResultSet rs = pstmt.executeQuery();

	         while (rs.next()) {
	            int cs_idx = rs.getInt("cs_idx");
	            String cs_title = rs.getString("cs_title");
	            String m_name = rs.getString("m_name");
	            String cs_reply_check = rs.getString("cs_reply_check");

	            CustomerDTO customer = new CustomerDTO();
	            customer.setCs_idx(cs_idx);
	            customer.setCs_title(cs_title);
	            customer.setM_name(m_name);
	            customer.setCs_reply_check(cs_reply_check);
	            list.add(customer);
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
	   public int customerListCount(Connection con, String searchText) {
	      String query = "SELECT count(*) AS cnt "
	            + "   FROM customer "
	            + "   WHERE cs_delete_date IS NULL";
	      try {
	         pstmt = con.prepareStatement(query);
	         ResultSet rs = pstmt.executeQuery();
	         while (rs.next()) {
	            int result = rs.getInt("CNT");
	            return result;
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return 0;
	   }
	   
	   // 글 등록
	   public int customerEnroll(Connection con, String cs_title, String cs_content, int m_no) {
	      // 1.쿼리작성
	      String query = "INSERT INTO customer" 
	            + "       VALUES(CUSTOMER_SEQ.NEXTVAL, ?, ?,0, SYSDATE,NULL,NULL,NULL,'N',?) ";
	      // 2.쿼리 사용할 준비
	      try {
	         pstmt = con.prepareStatement(query);
	         // 3.물음표에 값 넣기
	         pstmt.setString(1, cs_title);
	         pstmt.setString(2, cs_content);
	         pstmt.setInt(3, m_no);
	         

	         // 4.쿼리실행
	         int result = pstmt.executeUpdate();

	         // 5.DB연결종료
	         pstmt.close();
	         con.close();

	         return result;
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return 0;
	   }
	    
		
	public void customerSelect(Connection con, CustomerDTO customerDTO) {
		String query = "SELECT CS_IDX,"
				+ "		CS_TITLE,"
				+ "		CS_CONTENT,"
				+ "		CS_VIEWS,"
				+ "		CS_IN_DATE,"
				+ "		CS_UPDATE_DATE,"
				+ "		CS_DELETE_DATE,"
				+ "		CS_REPLY,"
				+ "		CS_REPLY_CHECK,"
				+ "		M_NAME"
				+ "		FROM CUSTOMER CS"
				+ "		JOIN MEMBER M ON CS.M_NO = M.M_NO"
				+ "		WHERE CS_IDX =?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, customerDTO.getCs_idx());
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int idx = rs.getInt("CS_IDX");
				String title = rs.getString("CS_TITLE");
				String content = rs.getString("CS_CONTENT");
				int views = rs.getInt("CS_VIEWS");
				String indate = rs.getString("CS_IN_DATE");
				String updateDate = rs.getString("CS_UPDATE_DATE");
				String deleteDate = rs.getString("CS_DELETE_DATE");
				String reply = rs.getString("CS_REPLY");
				String replyCheck = rs.getString("CS_REPLY_CHECK");
				String name = rs.getString("M_NAME");
				
				
				customerDTO.setCs_idx(idx);
				customerDTO.setCs_title(title);
				customerDTO.setCs_content(content);
				customerDTO.setCs_views(views);
				customerDTO.setCs_in_date(indate);
				customerDTO.setCs_update_date(updateDate);
				customerDTO.setCs_delete_date(deleteDate);
				customerDTO.setCs_reply(reply);
				customerDTO.setCs_reply_check(replyCheck);
				customerDTO.setM_name(name);
			}			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	
	
	public int customerView(Connection con, int idx) {
		String query = "UPDATE CUSTOMER"
				+ "		SET CS_VIEWS = CS_VIEWS+1"
				+ "		WHERE CS_IDX = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, idx);
			int result = pstmt.executeUpdate();

			return result;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return 0;		
	}

	public int customerUpdate(Connection con, int idx, String reply, String replyCheck) {
		String query = "UPDATE CUSTOMER"
				+ "		SET"
				+ "		CS_REPLY = ?,"
				+ "		CS_REPLY_CHECK = ?"
				+ "		WHERE CS_IDX = ?";
		
		try {
			System.out.println(replyCheck);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, reply);			
			pstmt.setString(2, "Y");			
			pstmt.setInt(3, idx);
			
			int result = pstmt.executeUpdate();
			return result;
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return 0;
	}

	public int customerDelete(Connection con, int idx) {
		String query = "DELETE FROM CUSTOMER"
				+ "		WHERE CS_IDX = ?";
				
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, idx);
			
			int result = pstmt.executeUpdate();
			
			return result;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return 0; 	
	}

	
	

	
	
	
}
