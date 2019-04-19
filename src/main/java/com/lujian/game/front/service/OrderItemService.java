package com.lujian.game.front.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.lujian.game.model.OrderItem;

public interface OrderItemService {
	

	// 根据订单查询所有订单项
	@Transactional(readOnly = true)
	List<OrderItem> findAll(String orderId);

	// 保存订单项
	@Transactional
	OrderItem save(OrderItem orderItem);
	
	//删除订单项
	@javax.transaction.Transactional
	void delOrderItemByOrderid(String orderid);
}
