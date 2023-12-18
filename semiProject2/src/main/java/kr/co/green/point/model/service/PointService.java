package kr.co.green.point.model.service;

import kr.co.green.point.model.dto.PointDTO;

public interface PointService {
	public int pointEnroll(int m_no);
	
	public PointDTO selectPoint(int m_no);
	
	public int pointIncrease(int o_point, int p_no);
	
	public int pointMinus(int o_point, int p_no);
	
	public PointDTO selectPM(int p_no );
	
	public int pointUpdate(int pointchange ,int p_no );

	
	
	
}
