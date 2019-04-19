package com.lujian.game.back.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.lujian.game.model.ProductType;
@Repository("backProductTypeRepository")
public interface ProductTypeReposity extends CrudRepository<ProductType, Integer>{
	
	List<ProductType> findAll();
}
