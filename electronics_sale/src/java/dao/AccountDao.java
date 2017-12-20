/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import pojo.Khachhang;


/**
 *
 * @author tranv
 */
public interface AccountDao {
    public Khachhang login(String userName,String passWord);
    public List<Khachhang> getListAccount();
    public int insertAccount(Khachhang khachhang);
}
