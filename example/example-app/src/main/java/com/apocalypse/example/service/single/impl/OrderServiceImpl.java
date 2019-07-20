package com.apocalypse.example.service.single.impl;

import com.apocalypse.common.service.impl.BaseServiceImpl;
import com.apocalypse.example.mapper.single.OrderDOMapper;
import com.apocalypse.example.model.OrderDO;
import com.apocalypse.example.service.single.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author <a href="kaihuijing@gmail.com">jingkaihui</a>
 * @Description
 * @date 2019/6/10
 */
@Slf4j
@Service
public class OrderServiceImpl extends BaseServiceImpl<OrderDO, Integer> implements OrderService {

    @Autowired
    private OrderDOMapper orderDOMapper;
}
