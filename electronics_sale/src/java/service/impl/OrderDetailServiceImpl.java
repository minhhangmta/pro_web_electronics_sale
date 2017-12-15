/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.OrderDetailDao;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Chitiethd;

/**
 *
 * @author tranv
 */
@Service
@Transactional
public class OrderDetailServiceImpl implements OrderDetailDao{

    @Autowired
    OrderDetailDao orderDetailDao;
    
    @Override
    public boolean saveOrderDetailDao(Chitiethd ct) {
        return orderDetailDao.saveOrderDetailDao(ct);
    }
    
}
