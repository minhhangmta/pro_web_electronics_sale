/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import pojo.Sanpham;

/**
 *
 * @author tranv
 */
public interface ProductService {
    public List<Sanpham> getListProduct();
    public List<Sanpham> getListProductByCategoryID(int categoryID);
    public Sanpham getDetailSanPham(int id);
    public Sanpham InsertSanPham();
    public Sanpham DeleteSanPham();
}
