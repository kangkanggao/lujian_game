package com.lujian.game.back.repository;

import org.springframework.data.repository.Repository;

import com.lujian.game.model.SellerInfo;

@org.springframework.stereotype.Repository(value="backSellerInfoRepository")
public interface SellerInfoRepository extends Repository<SellerInfo,Integer>{
	SellerInfo findByUsernameAndPassword(String username,String password);
}
