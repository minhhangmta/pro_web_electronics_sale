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
    public List<Sanpham> getListProduct(String proName, int typePrice, int limit,
            int offset, String sortByName, String sortByPrice, String sortType);
    public List<Sanpham> getListProductByCategoryID(int categoryID);
    public Sanpham getProductByID(int id);
    public List<Sanpham> getListNewProduct(int maTT);
    public List<Sanpham> getListProductHotByDM(int maTT, int limit, int idDM) ;
    public int getMaDMBySP(int idSP);
    public List<Sanpham> getLimitProByIdCat(int idCat, int limit, int idPrePro);
}  
