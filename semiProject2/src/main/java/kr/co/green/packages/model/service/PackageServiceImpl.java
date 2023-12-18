package kr.co.green.packages.model.service;

import java.sql.Connection;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.packages.model.dao.PackageDAO;
import kr.co.green.packages.model.dto.PackageDTO;

public class PackageServiceImpl {
	private Connection con;
	private DatabaseConnection dc;
	private PackageDAO packageDAO;
	
	public PackageServiceImpl() {
		packageDAO = new PackageDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}
	
	//orderDetail에 뿌려주기
	// 멤버랑 패키지 정보넣어서
	public void packageSelect(PackageDTO pack) {
		packageDAO.packageSelect(con, pack);
	}

	public PackageDTO getP_price(String p_name) {
		return packageDAO.getP_price(con,p_name);
	}
	
	
	
	
	
}
