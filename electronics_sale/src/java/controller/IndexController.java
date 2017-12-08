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
import service.CategoryService;

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

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String product(ModelMap mm) {
        mm.put("listDanhMuc", categoryService.getListDanhMuc());
        return "product";
    }

}
