package kr.co.green.map.model.service;

import java.sql.Connection;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.map.model.dao.MapDAO;
import kr.co.green.map.model.dto.MapDTO;

public class MapServiceImpl implements MapService {
	private Connection con;
	private DatabaseConnection dc;
	private MapDAO mapDAO;

	public MapServiceImpl() {
		mapDAO = new MapDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}

	// first에 뿌려주기
	@Override
	public void localSelect(MapDTO map) {
		mapDAO.localSelect(con, map);
	}

}
