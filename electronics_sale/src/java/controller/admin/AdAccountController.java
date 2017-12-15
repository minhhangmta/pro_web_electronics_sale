/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.AccountService;
import dao.impl.AccountDaoImpl;
import javax.servlet.http.HttpServletRequest;
import pojo.Taikhoan;
import util.Common;

/**
 *
 * @author Phong_Tung
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class AdAccountController {

    @Autowired
    AccountService accountService;

    @RequestMapping(value = "adaccount", method = RequestMethod.GET)
    public String Account(ModelMap mm) {
        mm.put("listtaikhoan", accountService.getListAccount());
        return "adaccount";
    }

    @RequestMapping(value = "/xoataikhoan/{mataikhoan}", method = RequestMethod.GET)
    public String deleteAccount(@ModelAttribute(value = "mataikhoan") int mataikhoan) {
        AccountDaoImpl acc = new AccountDaoImpl();
        acc.DeleteAccount(mataikhoan);
        return "redirect:/adaccount";
    }

    @RequestMapping(value = "/themtaikhoan", method = RequestMethod.GET)
    public String addAccount(ModelMap mm) {
        mm.put("newAccount", new Taikhoan());
        return "addAccount";
    }

    @RequestMapping(value = "/themtaikhoan", method = RequestMethod.POST)
    public String addAccount(ModelMap mm, HttpServletRequest request) {
        Taikhoan account = new Taikhoan();
        account.setHoten(request.getParameter("hoten"));
        account.setDiachi(request.getParameter("diachi"));
        account.setEmail(request.getParameter("email"));
        account.setSodienthoai(request.getParameter("sodienthoai"));
        account.setPassword(request.getParameter("password"));
        account.setUsername(request.getParameter("username"));
        account.setQuyen(Common.getQuyenByID(Integer.parseInt(request.getParameter("quyen"))));
        account.setMaTt(Integer.parseInt(request.getParameter("maTt")));
        int t = this.accountService.insertAccount(account);
        switch (t) {
            case 1:
                return "redirect:/adaccount";
            case -1:
                mm.put("msgAccount", "Tài khoản đã tồn tại");
                return "redirect:/addacount";
            default:
                mm.put("msgAccountErr", "Không thành công!!!Kiểm tra nhập liệu");
                return "redirect:/addacount";
        }
    }
        Taikhoan   tk;
    @RequestMapping(value = "suataikhoan/{mataikhoan}", method = RequestMethod.GET)
    public String editAccount(@ModelAttribute(value = "mataikhoan") int mataikhoan, ModelMap mm){
        tk= accountService.getAccountByID(mataikhoan);
        mm.put("tk",tk);
        mm.put("listtrangthai",Common.getListTrangThai());
         mm.put("listquyen",Common.getListQuyen());
        return "editAccount";
    }
    @RequestMapping(value = "suataikhoan", method = RequestMethod.POST)
    public String editAccount(ModelMap mm,HttpServletRequest request ){
        tk.setHoten(request.getParameter("hoten"));
        tk.setDiachi(request.getParameter("diachi"));
        tk.setEmail(request.getParameter("email"));
        tk.setSodienthoai(request.getParameter("sodienthoai"));
        tk.setPassword(request.getParameter("password"));
        tk.setUsername(request.getParameter("username"));
        tk.setQuyen(Common.getQuyenByID(Integer.parseInt(request.getParameter("quyen"))));
        tk.setMaTt(Integer.parseInt(request.getParameter("maTt")));
        int t = this.accountService.editAccount(tk);
        switch (t) {
            case 1:
                return "redirect:/adaccount";
            default:
                mm.put("msgAccountErr", "Không thành công!!!Kiểm tra nhập liệu");
                return "redirect:/addacount";
        }
    }
}
