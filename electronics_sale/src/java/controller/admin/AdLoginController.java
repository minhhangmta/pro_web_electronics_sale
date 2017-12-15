/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pojo.*;
import util.Common;
import service.AccountService;
import dao.impl.AccountDaoImpl;
/**
 *
 * @author Phong_Tung
 */
@Controller
public class AdLoginController {
    @Autowired
     private AccountService accountService;
    @RequestMapping(value = "/adlogin", method = RequestMethod.GET)
    public String Login(ModelMap mm){
        mm.put("taikhoan", new Taikhoan());
        return "adlogin";
    }
     
    @RequestMapping(value = "/adlogin", method = RequestMethod.POST)
    public String confirmLogin(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("taikhoan") Taikhoan t, ModelMap mm){
         Taikhoan tk = accountService.login(t.getUsername(), t.getPassword());
         AccountDaoImpl accdao= new AccountDaoImpl();
         Taikhoan account= accdao.getAccountByUser(t.getPassword());
         Quyen quyen= account.getQuyen();
         int ma = quyen.getMaQ();
        if (tk != null && ma==2) {
            HttpSession session = request.getSession();
            session.setAttribute("account", tk);
             return "adindex";
        } else {
            mm.put("msg", "Incorrect email or password!");
            return "adlogin";
        }           
    }
}
