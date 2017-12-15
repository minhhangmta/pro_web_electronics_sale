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
import org.springframework.web.bind.annotation.RequestParam;
import service.CategoryService;
import service.ProductService;
import util.Common;

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
    @Autowired
    CategoryService categoryService;

    @RequestMapping("/product/{id}")
    public String ListProductByCategoryID(ModelMap mm, @PathVariable("id") int categoryID) {
        mm.put("listSanPham", productService.getListProductByCategoryID(categoryID));
        mm.put("listDanhMuc", categoryService.getListDanhMuc());
        return "product";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String product(ModelMap mm) {
        return productPost(mm);
    }

    @RequestMapping(value = "/product", method = RequestMethod.POST)
    public String productPost(ModelMap mm) {
        mm.put("listDanhMuc", categoryService.getListDanhMuc());
        String proName = "";
        int typePrice = 0;
        int limit = 9;
        int offset = 0;
        String sortByName = "";
        String sortByPrice = "";
        String sortType = "";

        proName = Common.replaceWildcard(proName);
        mm.put("listSanPham", productService.getListProduct(proName, typePrice,
                limit, offset, sortByName, sortByPrice, sortType));
        return "product";
    }

}
