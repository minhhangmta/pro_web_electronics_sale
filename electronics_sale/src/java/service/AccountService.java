/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import pojo.Taikhoan;

/**
 *
 * @author tranv
 */
public interface AccountService {
    public Taikhoan login(String userName, String passWord);
}
