package kr.co.green.map.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.map.model.dto.MapDTO;

public class MapDAO {
	private PreparedStatement pstmt;
	
	public void localSelect(Connection con, MapDTO map) {
		String query = "SELECT l.l_idx,"
				+" 				l.l_name,"	
				+" 				l.l_content1,"	
				+" 				l.l_content2,"	
				+" 				l.l_file_path,"	
				+" 				l.l_gps,"
				+" 				l.c_idx"
				+"		FROM local l"
				+"		JOIN continent c"
				+"		ON l.c_idx = c.c_idx"
				+"		WHERE l_idx=?";
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, map.getL_idx());
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				//로컬인덱스, 지역이름, content1, content2, 사진, 좌표, 대륙인덱스 꺼내기
				int l_idx = rs.getInt("l_idx");
				String l_name = rs.getString("l_name");
				String l_content1 = rs.getString("l_content1");
				String l_content2 = rs.getString("l_content2");
				String l_file_path = rs.getString("l_file_path");
				String l_gps = rs.getString("l_gps");
				int c_idx = rs.getInt("c_idx");

				map.setL_idx(l_idx);
				map.setL_name(l_name);
				map.setL_content1(l_content1);
				map.setL_content2(l_content2);
				map.setL_file_path(l_file_path);
				map.setL_gps(l_gps);
				map.setC_idx(c_idx);
			}
			pstmt.close();
			con.close();	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	
	
	
	
	
	
	
}
