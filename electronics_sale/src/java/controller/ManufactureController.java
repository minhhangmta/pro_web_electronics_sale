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
import service.ManufactureService;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")

public class ManufactureController {
    @Autowired
    ManufactureService manufactureService;
    
    @RequestMapping("/nhacungcap")
    public String nhacungcap(ModelMap mm){
        mm.put("listnhacungcap",manufactureService.getListNhaCungCap());
        return "manufacture";
    }
}
