/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.impl.ProductDaoImpl;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import pojo.Sanpham;
import service.ProductService;

/**
 *
 * @author tranv
 */
@Service
@Transactional
public class ProductServiceImpl implements ProductService{
    
    @Override
    public List<Sanpham> getListProduct(){
        return new ProductDaoImpl().getListProduct();
    }
    
    @Override
    public Sanpham getDetailSanPham(int id) {
        return new ProductDaoImpl().getDetailProduct(id);
    }

    @Override
    public Sanpham InsertSanPham() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Sanpham DeleteSanPham() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Sanpham> getListProductByCategoryID(int categoryID) {
        return new ProductDaoImpl().getListProductByCategoryID(categoryID);
    }
}
