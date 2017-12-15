/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.CategoryDao;
import dao.impl.CategoryDaoImpl;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Danhmuc;
import service.CategoryService;

/**
 *
 * @author tranv
 */
@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryDao categoryDao;

    @Override
    public List<Danhmuc> getListDanhMuc() {
        return categoryDao.getListDanhMuc();
    }

    @Override
    public int insertCategory(Danhmuc dm) {
        return categoryDao.insertCategory(dm);
    }
     @Override
     public int editCategory(Danhmuc dm){
         return categoryDao.editCategory(dm);
     }
     @Override
     public Danhmuc getCategoryByID(int id){
        return categoryDao.getCategoryByID(id);
    }
}
