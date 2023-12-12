package kr.co.green.airline.model.service;

import java.sql.Connection;

import kr.co.green.airline.model.dao.AirLineDAO;
import kr.co.green.airline.model.dto.AirLineDTO;
import kr.co.green.common.DatabaseConnection;

public class AirLienServiceImpl implements AirLineService {
	private Connection con;
	private DatabaseConnection dc;
	private AirLineDAO airlineDAO;

	public AirLienServiceImpl() {
		airlineDAO = new AirLineDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}

	@Override
	public int airLineEnroll(AirLineDTO airlineDTO) {
		return airlineDAO.airLineEnroll(con, airlineDTO);
	}

	@Override
	public AirLineDTO selectAirLine(String at_imp_uid) {
		return airlineDAO.selectAirLine(con, at_imp_uid);
	}

}
