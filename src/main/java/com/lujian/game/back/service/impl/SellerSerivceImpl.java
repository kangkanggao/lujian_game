package com.lujian.game.back.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lujian.game.back.repository.SellerInfoRepository;
import com.lujian.game.back.service.SellerService;
import com.lujian.game.model.SellerInfo;
@Service
public class SellerSerivceImpl implements SellerService{
    @Autowired
    private SellerInfoRepository sellerInfoRepository;
	@Override
	public SellerInfo findSellerInfo(String username, String password) {
		return sellerInfoRepository.findByUsernameAndPassword(username, password);
	}

}
