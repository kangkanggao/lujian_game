package com.lujian.game.back.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.lujian.game.back.service.OrderItemService;
import com.lujian.game.back.service.ProductInfoService;
import com.lujian.game.model.OrderItem;
import com.lujian.game.model.ProductInfo;

/*查看订单项对应的订单内容
 * 	通过订单列表，查看某一订单内的所有的订单项目的内容，即单个订单中商品对应的内容
 */

/*
 * 这一块通过json传递数据给前端页面
 */

@RestController("backOrderItemController")
@RequestMapping("/back")
public class OrderItemController {

	@Autowired
	private OrderItemService orderItemService;
	
	@Autowired
	private ProductInfoService productInfoService;
	
	@RequestMapping(path="/toOrderItemList")
	@ResponseBody
	public Map<String, Object> toOrderItemList(@RequestParam String orderId) {

		Map<String, Object> orderItemData=new HashMap<>();
		
		List<OrderItem> orderItems=orderItemService.findAllItems(orderId);
		for (OrderItem orderItem : orderItems) {
			ProductInfo productInfo= productInfoService.findById(orderItem.getProductId());
			//这样来将商品名称直接在此插入到集合数组对应的对象中
			orderItem.setProductName(productInfo.getProductName());
		}
		
		orderItemData.put("orderItems", orderItems);
		
		return orderItemData;
	}
}
