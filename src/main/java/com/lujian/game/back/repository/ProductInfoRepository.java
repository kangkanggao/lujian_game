package com.lujian.game.back.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import com.lujian.game.model.ProductInfo;

@Repository("backProductInfoRepository")
public interface ProductInfoRepository extends JpaRepository<ProductInfo, Integer>,JpaSpecificationExecutor<ProductInfo> {
	
}
