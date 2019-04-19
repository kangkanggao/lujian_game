package com.lujian.game.front.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.lujian.game.model.ProductType;

public interface ProductTypeReposity extends CrudRepository<ProductType, Integer>{
	
	List<ProductType> findAll();
}
