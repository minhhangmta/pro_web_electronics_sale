/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import pojo.Danhmuc;

/**
 *
 * @author tranv
 */
public interface CategoryService {
    public List<Danhmuc> getListDanhMuc();
    public int insertCategory(Danhmuc dm);
    public int editCategory(Danhmuc dm);
    public Danhmuc getCategoryByID(int id);
}
