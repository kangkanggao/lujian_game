package com.lujian.game.back.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lujian.game.back.repository.ProductTypeReposity;
import com.lujian.game.back.service.ProductTypeService;
import com.lujian.game.model.ProductType;


@Service("bcakProductTypeService")
public class ProductTypeServiceImpl implements ProductTypeService {
	
	@Autowired
	private ProductTypeReposity productCategoryReposity;

	@Override
	public List<ProductType> findProductTypes() {
		return productCategoryReposity.findAll();
	}

}
