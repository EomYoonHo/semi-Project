package kr.co.green.ReviewBoard.model.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.common.BoardPageInfo;

public class ReviewBoardDAO {
	private PreparedStatement pstmt;

	public ArrayList<ReviewBoardDTO> boardList(Connection con, BoardPageInfo pi, String searchText) {
		
		ArrayList<ReviewBoardDTO> list =new ArrayList<>();
		
		String query = "SELECT r_idx, "
				+ "r_title, "
//				+ "r_nickname, "
				+ "r_star, "
				+ "r_views  "
				+ " FROM review  "
				+ "WHERE r_delete_date IS NULL AND r_title LIKE '%' || ? || '%' ORDER BY r_in_date DESC  OFFSET ? ROWS FETCH FIRST ? ROWS ONLY ";
		
		try {
			pstmt = con.prepareStatement(query);
			
			
			pstmt.setString(1, searchText);
			pstmt.setInt(2, pi.getOffset());
			pstmt.setInt(3, pi.getBoardLimit());
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int idx = rs.getInt("R_IDX");
				String title = rs.getString("R_TITLE");
//				String nickName = rs.getString("R_NICKNAME");
				String star = rs.getString("R_STAR");
				int views = rs.getInt("R_VIEWS");
				
				ReviewBoardDTO board = new ReviewBoardDTO();
				board.setIdx(idx);
				board.setTitle(title);
//				board.setNickName(nickName);
				board.setStar(star);
				board.setViews(views);
				
				list.add(board);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}


	public int boardListCount(Connection con, String searchText) {
		String query = "SELECT count(*) AS cnt FROM review WHERE r_delete_date IS NULL AND r_title Like '%' || ? || '%'";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, searchText);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int result = rs.getInt("CNT");
				return result;
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return 0;
	}
	

	public int boardEnroll(Connection con, String title, String content, String star) {
		String query = "INSERT INTO review"
				+ "		VALUES(review_SEQ.nextval," 
				+ "			   ?," 
				+ "			   ?," 
				+ "			   ?," 
				+ "			   SYSDATE, " 
				+ "			   NULL,"  
				+ "			   NULL,"
				+ "				0,"
				+ "				0)"; 
		
		
		try {
			ReviewBoardDTO board = new ReviewBoardDTO();
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, star);
		
			
			
			int result = pstmt.executeUpdate();			
			
			return result;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return 0;
	}


	public int boardView(Connection con, int idx) {
		String query = "UPDATE review"
				+ "		SET r_views = r_views+1"
				+ "		WHERE r_idx = ?";
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


	public void boardSelect(Connection con, ReviewBoardDTO reviewboard) {
		String query = "SELECT r_idx,"
				+ "		r_title,"
				+ "		r_content,"
				+ "		r_star,"
				+ "		r_nickName"
				+ "		r_in_date,"
				+ "		r_update_date,"
				+ "		r_views"
				+ "		FROM review"
				+ "		WHERE r_idx = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, reviewboard.getIdx());
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int idx = rs.getInt("R_IDX");
				String title = rs.getString("R_TITLE");
				String content = rs.getString("R_CONTENT");
				String star = rs.getString("R_STAR");
				String nickName = rs.getString("R_NICKNAME");
				String indate = rs.getString("R_IN_DATE");
				String updateDate = rs.getString("R_UPDATE_DATE");
				int views = rs.getInt("R_VIEWS");
				
				reviewboard.setIdx(idx);
				reviewboard.setTitle(title);
				reviewboard.setContent(content);
				reviewboard.setStar(star);
				reviewboard.setNickName(nickName);
				reviewboard.setIndate(indate);
				reviewboard.setUpdateDate(updateDate);
				reviewboard.setViews(views);
			}
		
		} catch (SQLException e) {
			
		
			e.printStackTrace();
		}
		
	}



	public int boardUpdate(Connection con, int idx, String title, String content, String star, String fileName,
			String uploadDirectory) {
			
		String query = "UPDATE review"
				+ "		SET r_title = ?,"
				+ "		r_content = ?,"
				+ "		r_star = ?,"
				+ "		WHERE r_idx = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, star);
			pstmt.setInt(4, idx);
		
			int result = pstmt.executeUpdate();
			return result;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}	
		
		return 0;
	}


	public int boardDelete(Connection con, int idx) {
		
		String query = "DELETE FROM review"
				+ "		WHERE r_idx = ?";
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
