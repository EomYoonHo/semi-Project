package kr.co.green.airline.model.service;

import kr.co.green.airline.model.dto.AirLineDTO;

public interface AirLineService {

	public int airLineEnroll(AirLineDTO airlineDTO);

	public AirLineDTO selectAirLine(String at_imp_uid);

}
