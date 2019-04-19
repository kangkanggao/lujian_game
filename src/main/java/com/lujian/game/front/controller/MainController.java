package com.lujian.game.front.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lujian.game.front.service.ProductInfoService;
import com.lujian.game.front.service.ProductTypeService;
import com.lujian.game.model.ProductInfo;
import com.lujian.game.model.ProductType;

/*
 * 到前端主界面
 *   1.商家展示界面
 */
@Controller
@RequestMapping("/front")
public class MainController {

	@Autowired
	private ProductTypeService productTypeService; 
	@Autowired
	private ProductInfoService productInfoService;
	// 前端商家主界面
	@RequestMapping("/toMain")
	public String toMain(Model model) {

		//查询所有的商品类型
		List<ProductType> productTypes=productTypeService.findProductTypes();
		for (ProductType productType : productTypes) {
			Integer id = productType.getId();
			Page<ProductInfo> findAllProductInfos = productInfoService.findAllProductInfos(1,"", id, "", -1);
			model.addAttribute(String.valueOf(id), findAllProductInfos);
		}
		model.addAttribute("productTypes", productTypes);
		return "/front/main";
	}
}
