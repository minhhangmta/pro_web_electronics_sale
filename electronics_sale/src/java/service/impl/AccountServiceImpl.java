/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import dao.AccountDao;
import java.util.List;
import pojo.Khachhang;
import service.AccountService;

/**
 *
 * @author tranv
 */
@Service
@Transactional
public class AccountServiceImpl implements AccountService{
    @Autowired
    private AccountDao account;
    @Override
    public Khachhang login(String userName, String passWord) {
           return  account.login(userName, passWord);
    }    

    @Override
    public List<Khachhang> getListAccount() {
        return account.getListAccount();
    }

    @Override
    public int insertAccount(Khachhang kh) {
        return account.insertAccount(kh);
    }
}
