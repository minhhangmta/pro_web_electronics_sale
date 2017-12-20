/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Taikhoan;
import dao.AccountDao;
import dao.impl.AccountDaoImpl;
import java.util.List;
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
    public Taikhoan login(String userName, String passWord) {
           return  account.login(userName, passWord);
    }    
 @Override
    public boolean existUser(String username, String password) {
        return new AccountDaoImpl().existUser(username, password);
    }
    @Override
    public List<Taikhoan> getListAccount() {
        return account.getListAccount();
    }

    @Override
    public int insertAccount(Taikhoan tk) {
        return account.insertAccount(tk);
    }
    @Override
    public int editAccount(Taikhoan account){
        return this.account.editAccount(account);
    }
     @Override
    public Taikhoan getAccountByID(int id){
        return account.getAccountByID(id);
    }
}
