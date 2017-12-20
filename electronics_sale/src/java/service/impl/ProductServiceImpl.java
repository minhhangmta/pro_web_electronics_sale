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
    public List<Sanpham> getListProduct(String proName, int typePrice, int limit,
            int offset, String sortByName, String sortByPrice, int sortType) {
        return new ProductDaoImpl().getListProduct(proName, typePrice, limit,
                offset, sortByName, sortByPrice, sortType);
    }

    @Override
    public Sanpham getProductByID(int id) {
        return new ProductDaoImpl().getProductByID(id);
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

    @Override
    public List<Sanpham> getListNewProduct(int maTT) {
        return new ProductDaoImpl().getListNewProduct(maTT);
    }

    @Override
    public List<Sanpham> getListProductHotByDM(int maTT, int limit, int idDM) {
        return new ProductDaoImpl().getListProductHotByDM(maTT, limit, idDM);
    }

    @Override
    public int getMaDMBySP(int idSP) {
        return new ProductDaoImpl().getMaDMBySP(idSP);
    }

    @Override
    public List<Sanpham> getLimitProByIdCat(int idCat, int limit, int idPrePro) {
        return new ProductDaoImpl().getLimitProByIdCat(idCat, limit, idPrePro);
    }

    @Override
    public int getTotalProduct(int price, String name) {
        return new ProductDaoImpl().getTotalProduct(price, name);
    }

    @Override
    public List<Sanpham> getListProduct() {
         return new ProductDaoImpl().getListProduct();
    }

}
