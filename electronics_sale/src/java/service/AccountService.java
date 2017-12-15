/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import pojo.Taikhoan;

/**
 *
 * @author tranv
 */
public interface AccountService {
    public Taikhoan login(String userName, String passWord);
    public boolean existUser(String username, String password);
    public List<Taikhoan> getListAccount();
    public int insertAccount(Taikhoan account);
    public int editAccount(Taikhoan account);
    public Taikhoan getAccountByID(int id);
}
