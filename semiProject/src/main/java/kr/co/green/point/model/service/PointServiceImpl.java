package kr.co.green.point.model.service;

import java.sql.Connection;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.point.model.dao.PointDAO;
import kr.co.green.point.model.dto.PointDTO;

public class PointServiceImpl implements PointService {
	private Connection con;
	private DatabaseConnection dc;
	private PointDAO pointDAO;

	public PointServiceImpl() {
		pointDAO = new PointDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}

	@Override
	public int pointEnroll(int m_no) {
		return pointDAO.pointEnroll(con, m_no);
	}

	@Override
	public PointDTO selectPoint(int m_no) {
		return pointDAO.selectPoint(con, m_no);
	}

	@Override
	public int pointIncrease(int o_point, int p_no) {
		return pointDAO.pointIncrease(con, o_point, p_no);
	}
	@Override
	public int pointMinus(int o_point, int p_no) {
		return pointDAO.pointMinus(con, o_point, p_no);
	}

	@Override
	public PointDTO selectPM(int p_no) {
		return pointDAO.selectPM(con, p_no);
	}

	@Override
	public int pointUpdate(int pointchange, int p_no) {
		return pointDAO.pointUpdate(con, pointchange, p_no);
	}



}
