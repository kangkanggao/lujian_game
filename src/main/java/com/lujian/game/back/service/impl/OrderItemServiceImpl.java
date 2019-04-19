package com.lujian.game.back.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lujian.game.back.repository.OrderItemRepository;
import com.lujian.game.back.repository.ProductInfoRepository;
import com.lujian.game.back.service.OrderItemService;
import com.lujian.game.model.OrderItem;

@Service("backOrderItemService")
public class OrderItemServiceImpl implements OrderItemService {
	
	@Autowired
	ProductInfoRepository productInfoRepository;
	
	@Autowired
	OrderItemRepository orderItemRepository;
	
	@Override
	public List<OrderItem> findAllItems(String orderId) {
		//通过订单编号，获得订单对应的商品，及数量
		//要获得订单项
		return orderItemRepository.findByOrderId(orderId);
	}

	@Override
	public void deleteBatch(List<String> orderIds) {
		orderItemRepository.deleteOrderItemByOrderId(orderIds);
	}

}
