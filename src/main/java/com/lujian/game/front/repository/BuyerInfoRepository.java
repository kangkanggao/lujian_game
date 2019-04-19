package com.lujian.game.front.repository;

import org.springframework.data.repository.CrudRepository;

import com.lujian.game.model.BuyerInfo;

public interface BuyerInfoRepository extends CrudRepository<BuyerInfo, Integer> {

	BuyerInfo findByBuyerNameAndBuyerPwd(String buyerName, String buyerPwd);

	BuyerInfo findByBuyerName(String name);

	BuyerInfo findByBuyerPwd(String buyerPwd);

}
