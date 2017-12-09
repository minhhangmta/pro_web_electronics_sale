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
import org.springframework.web.bind.annotation.RequestParam;
import service.CategoryService;
import service.ProductService;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class ProductController {

    @Autowired
    ProductService productService;
<<<<<<< HEAD
    
    @RequestMapping("/product-list")
    public String dssanpham(ModelMap mm){
        mm.put("listProduct",productService.getListProduct());
        return "product-list";
    }
    
    @RequestMapping("/productbycate")
    public String ListProductByCategoryID(ModelMap mm,@RequestParam int categoryID){
        mm.put("listProduct",productService.getListProductByCategoryID(categoryID));
=======
    @Autowired
    CategoryService categoryService;

//    @RequestMapping("/product-list")
//    public String dssanpham(ModelMap mm){
////        mm.put("danhsachsanpham",productService.getListSanPham());
//        return "product-list";
//    }
    @RequestMapping("/product/{id}")
    public String ListProductByCategoryID(ModelMap mm, @PathVariable("id") int categoryID) {
        mm.put("listSanPham", productService.getListProductByCategoryID(categoryID));
        mm.put("listDanhMuc", categoryService.getListDanhMuc());
>>>>>>> 1d2f85e053443fa928865c911ee31a213ba101b3
        return "product";
    }

}
