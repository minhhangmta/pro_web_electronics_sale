/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.impl.CategoryDaoImpl;
import java.util.List;
import javax.transaction.Transactional;
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

    @Override
    
    public List<Danhmuc> getListCategory() {
        return new CategoryDaoImpl().getListCategory();
    }

}
