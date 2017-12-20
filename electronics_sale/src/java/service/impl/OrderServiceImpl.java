/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.OrderDao;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Donhang;
import service.OrderService;

/**
 *
 * @author tranv
 */
@Service
@Transactional
public class OrderServiceImpl implements OrderService
{
    @Autowired
    OrderDao orderDao;
    @Override
    public boolean saveOrder(Donhang donhang) {
        return orderDao.saveOrder(donhang);
    }

    @Override
    public int getIdOrder(String keydonhang) {
        return orderDao.getIdOrder(keydonhang);
    }

    
}
