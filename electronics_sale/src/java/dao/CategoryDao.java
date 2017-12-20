/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.transaction.Transactional;
import pojo.Danhmuc;

/**
 *
 * @author tranv
 */
public interface CategoryDao {

    @Transactional
    public List<Danhmuc> getListDanhMuc();
    public int insertCategory(Danhmuc cate);
    public int editCategory(Danhmuc cate);
    public int DeleteCategory(int id);
    public Danhmuc getCategoryByID(int id);
    public List<Danhmuc> getListDanhMucCha();
}
