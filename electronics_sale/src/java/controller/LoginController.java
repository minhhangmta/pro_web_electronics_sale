/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pojo.Khachhang;
import pojo.Taikhoan;
import service.AccountService;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class LoginController {

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public String insert(ModelMap mm) {
        mm.put("taikhoan", new Taikhoan());
        return "login";
    }

    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("taikhoan") Taikhoan t, ModelMap mm) {
        Khachhang tk = accountService.login(t.getUsername(), t.getPassword());
        if (tk != null) {
            HttpSession session = request.getSession();
            session.setAttribute("account", tk);
            return "index";
        } else {
            mm.put("msg", "Incorrect email or password!");
            return "login";
        }
    }

    @RequestMapping(value = "/Logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:Login";
    }

    // Đăng ký tài khoản 
    @RequestMapping(value = "/dangky", method = RequestMethod.GET)
    public String dangky(ModelMap mm) {
        mm.put("accountnew", new Taikhoan());
        return "Account";
    }

    @RequestMapping(value = "/request", method = RequestMethod.POST)
    public String dangky(ModelMap mm, HttpServletRequest request) {
        Khachhang kh = new Khachhang();
        String passCf = request.getParameter("PasswordCf");
        if (passCf.equals(request.getParameter("Password"))) {
            kh.setHoten(request.getParameter("NameAccount"));
            kh.setEmail(request.getParameter("EmailAccount"));
            kh.setSodienthoai(request.getParameter("Telephone"));
            kh.setDiachi(request.getParameter("Address"));
            kh.setUsername(request.getParameter("Username"));
            kh.setPassword(request.getParameter("Password"));
            int t = this.accountService.insertAccount(kh);
            switch (t) {
                case 1:
                    mm.put("taikhoan",new Taikhoan());
                    return "login";
                case -1:
                    mm.put("msgAccount", "Tài khoản đã tồn tại");
                    return "Account";
                default:
                    mm.put("msgAccountErr", "Không thành công!!!Kiểm tra nhập liệu");
                    return "Account";
            }
        }
        else{
            mm.put("msgPass","Mật khẩu cf k đúng!!!");
            return "Account";
        }
    }

}
