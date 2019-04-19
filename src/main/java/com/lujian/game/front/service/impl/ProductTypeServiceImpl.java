package com.lujian.game.front.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lujian.game.front.repository.ProductTypeReposity;
import com.lujian.game.front.service.ProductTypeService;
import com.lujian.game.model.ProductType;


@Service("frontProductTypeService")
public class ProductTypeServiceImpl implements ProductTypeService {
	
	@Autowired
	private ProductTypeReposity productCategoryReposity;

	@Override
	public List<ProductType> findProductTypes() {
		return productCategoryReposity.findAll();
	}

}
