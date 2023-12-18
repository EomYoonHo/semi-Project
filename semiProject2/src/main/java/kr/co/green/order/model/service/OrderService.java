package kr.co.green.order.model.service;

import kr.co.green.order.model.dto.OrderDTO;

public interface OrderService {

	public int orderEnroll(OrderDTO orderDTO);

	public OrderDTO selectOrder(String imp_uid);
	

}
