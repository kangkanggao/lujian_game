package com.lujian.game.front.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.lujian.game.model.BuyerAddress;

public interface BuyerAddressRepository extends CrudRepository<BuyerAddress, Integer> {
   List<BuyerAddress>  findByBid(int bid);
}
