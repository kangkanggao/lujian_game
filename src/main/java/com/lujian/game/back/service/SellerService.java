package com.lujian.game.back.service;

import org.springframework.transaction.annotation.Transactional;

import com.lujian.game.model.SellerInfo;

public interface SellerService {
	@Transactional(readOnly = true)
	SellerInfo findSellerInfo(String username, String password);
}
