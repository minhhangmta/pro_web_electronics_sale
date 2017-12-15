/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.impl.CategoryServiceImpl;
import service.CategoryService;
import service.ProductService;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")

public class DetailProductController {

    @Autowired
    ProductService productService;
//    @Autowired
//    CategoryService categoryService;

    @RequestMapping(value = "/product-detail/{id}", method = RequestMethod.GET)
    public String productDetail(ModelMap mm, @PathVariable("id") int productID) {
        mm.put("sanPham", productService.getProductByID(productID));
        int idCat = productService.getMaDMBySP(productID);
        //get 5 sp related
        mm.put("listRelated", productService.getLimitProByIdCat(idCat, 4, productID));
        return "product-detail";
    }

    /*
    @RequestMapping("/product/{id}")
    public String ListProductByCategoryID(ModelMap mm, @PathVariable("id") int categoryID) {
        mm.put("listSanPham", productService.getListProductByCategoryID(categoryID));
        mm.put("listDanhMuc", categoryService.getListDanhMuc());
        return "product";
    }
     */
}
