package com.lujian.game.front.service;

import com.alipay.api.AlipayApiException;
import com.lujian.game.dto.AlipayBean;

/*支付服务*/
public interface PayService {

    /*支付宝*/
    String aliPay(AlipayBean alipayBean) throws AlipayApiException;
}
