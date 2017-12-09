/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
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
@RequestMapping("/shopping")
public class ContactController {

    @Autowired
    ContactService contactService;

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String insert(ModelMap mm) {
        mm.put("lienhe", new Lienhe());
        return "mail";
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save( ModelMap mm,HttpServletRequest request) {
//        if (lienhe.getHoten() != null && lienhe.getEmail() != null && lienhe.getSodienthoai()!=null &&lienhe.getLienhe()!=null) {
//            contactService.insertContact(lienhe);
//            return "thanhcong";
//        }
//        else{
//            return "contact";
//        }
        Lienhe lh= new Lienhe();
        lh.setHoten(request.getParameter("Name"));
        lh.setEmail(request.getParameter("Email"));
        lh.setSodienthoai(request.getParameter("Telephone"));
        lh.setLienhe(request.getParameter("message"));
        this.contactService.insertContact(lh);
        return "product";
    }

}
