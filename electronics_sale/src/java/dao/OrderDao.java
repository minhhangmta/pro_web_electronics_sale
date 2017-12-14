/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import pojo.Donhang;

/**
 *
 * @author tranv
 */
public interface OrderDao{
    public boolean saveOrder(Donhang donhang);
    public int getIdOrder(Donhang donhang);
}
