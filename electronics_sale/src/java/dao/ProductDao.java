/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import pojo.Sanpham;

/**
 *
 * @author tranv
 */
public interface ProductDao {
    public List<Sanpham> getListProduct();
    public List<Sanpham> getListProductByCategoryID(int categoryID);
    public Sanpham getDetailProduct(int id);
    public int addProduct(Sanpham sanpham);
    public int editProduct(Sanpham sanpham);
    public int deleteProduct(int id);
}  
