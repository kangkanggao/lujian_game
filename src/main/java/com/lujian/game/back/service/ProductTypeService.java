package com.lujian.game.back.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.lujian.game.model.ProductType;

public interface ProductTypeService {
  @Transactional(readOnly=true)
  List<ProductType> findProductTypes();
}
