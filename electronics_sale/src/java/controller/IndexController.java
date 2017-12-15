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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.*;
import util.Constant;

/**
 *
 * @author minhh
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class IndexController {

    @Autowired
    CategoryService categoryService;
    @Autowired
    ProductService productService;

    @RequestMapping(value = {"/index", "/"}, method = RequestMethod.GET)
    public String index(ModelMap mm) {
        mm.put("listNewPro", productService.getListNewProduct(Constant.TRANGTHAI_NEW));
        mm.put("listDanhMucCha", categoryService.getListDanhMucCha());
        return "index";
    }

//    @RequestMapping(value = "/index", method = RequestMethod.POST)
//    public String indexPost(ModelMap mm,
    //            @RequestParam(value = "idDM", required = false) int idDM, 
//            @RequestParam(value = "demo", required = false) Integer demo
//    ) {
//        System.out.println("yyyy");
//        int idDM = 0;
//        System.out.println("pppp" + demo);
//        if (idDM > 0) {
//            mm.put("listProductHot", productService.getListProductHotByDM(Constant.TRANGTHAI_HOT, Constant.LIMIT_HOT, idDM));
//        }
//        return "index";
//    }
}
