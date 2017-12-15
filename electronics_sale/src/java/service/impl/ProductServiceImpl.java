/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.AccountDao;
import dao.impl.ProductDaoImpl;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Sanpham;
import service.ProductService;
import dao.ProductDao;

/**
 *
 * @author tranv
 */
@Service
@Transactional
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductDao product;
    @Override
    public List<Sanpham> getListProduct(){
        return new ProductDaoImpl().getListProduct();
    }
    
    @Override
    public Sanpham DetailSanPham(int id) {
        return new ProductDaoImpl().getDetailProduct(id);
    }

    @Override
    public int InsertSanPham(Sanpham sanpham) {
       return product.addProduct(sanpham);
    }
    @Override
    public int EditSanPham(Sanpham sanpham) {
       return product.editProduct(sanpham);
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
