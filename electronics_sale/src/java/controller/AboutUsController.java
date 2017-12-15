/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@Configuration
@ComponentScan("service.impl")
public class AboutUsController{
    
    @RequestMapping("/about")
    public String about(ModelMap mm){
//        mm.put("listDanhMuc",categoryService.getListDanhMuc());
        return "about";
    }
 
}
