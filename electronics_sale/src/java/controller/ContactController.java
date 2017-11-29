/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;
import pojo.Lienhe;
import service.ContactService;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class ContactController {
//
//    @Autowired
//    ContactService contactService;
//
//    @RequestMapping(value = "/contact", method = RequestMethod.GET)
//    public String insert(ModelMap mm) {
//        mm.put("lienhe", new Lienhe());
//        return "contact";
//    }
//
//    @RequestMapping(value = "/SaveContact", method = RequestMethod.POST)
//    public String save(@ModelAttribute(value = "lienhe") Lienhe lienhe) {
//        if (lienhe.getHoten() != null && lienhe.getEmail() != null && lienhe.getSodienthoai()!=null &&lienhe.getLienhe()!=null) {
//            contactService.insertContact(lienhe);
//            return "thanhcong";
//        }
//        else{
//            return "contact";
//        }
//    }

}
