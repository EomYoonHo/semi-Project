package kr.co.green.packages.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.packages.model.dto.PackageDTO;

public class PackageDAO {

	
	
	private PreparedStatement pstmt;
	
	public void packageSelect(Connection con, PackageDTO pack) {
		String query = "SELECT p_idx,"
				+" 				p_name,"	
				+" 				p_content,"	
				+" 				p_file_path1,"	
				+" 				p_file_path2,"	
				+" 				p_file_path3,"	
				+" 				p_price"
				+"		FROM package1"
				+"		WHERE p_idx=?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pack.getP_idx());
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				//로컬인덱스, 지역이름, content1, content2, 사진, 좌표, 대륙인덱스 꺼내기
				int p_idx = rs.getInt("p_idx");
				String p_name = rs.getString("p_name");
				String p_content = rs.getString("p_content");
				String p_file_path1 = rs.getString("p_file_path1");
				String p_file_path2 = rs.getString("p_file_path2");
				String p_file_path3 = rs.getString("p_file_path3");
				int p_price = rs.getInt("p_price");


				pack.setP_idx(p_idx);
				pack.setP_name(p_name);
				pack.setP_content(p_content);
				pack.setP_file_path1(p_file_path1);
				pack.setP_file_path2(p_file_path2);
				pack.setP_file_path3(p_file_path3);
				pack.setP_price(p_price);

			}
			pstmt.close();
			con.close();	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public PackageDTO getP_price(Connection con, String p_name) {
		String query = "SELECT p_idx,"
				+" 					p_name,"	
				+" 					p_content,"	
				+" 					p_file_path1,"	
				+" 					p_file_path2,"	
				+" 					p_file_path3,"	
				+" 					p_price"
				+"		FROM package1"
				+"		WHERE p_name=?";
		
		PackageDTO result = new PackageDTO();
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p_name);
			ResultSet rs =pstmt.executeQuery();
			
			while (rs.next()) {
				int p_idx = rs.getInt("p_idx");
				String p_content = rs.getString("p_content");
				String p_file_path1 = rs.getString("p_file_path1");
				String p_file_path2 = rs.getString("p_file_path2");
				String p_file_path3 = rs.getString("p_file_path3");
				int p_price = rs.getInt("p_price");
				

				result.setP_idx(p_idx);
				result.setP_name(p_name);
				result.setP_content(p_content);
				result.setP_file_path1(p_file_path1);
				result.setP_file_path2(p_file_path2);
				result.setP_file_path3(p_file_path3);
				result.setP_price(p_price);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	
}
