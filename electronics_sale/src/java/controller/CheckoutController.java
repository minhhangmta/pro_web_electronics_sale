/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pojo.Chitiethd;
import pojo.Donhang;
import pojo.Item;
import service.OrderDetailService;
import service.OrderService;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")
@RequestMapping(value = "/shopping")
public class CheckoutController {

    @Autowired
    OrderService orderService;

    // checkout đơn hàng
    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String checkout() {
        return "checkout";
    }
//    @Autowired
//    OrderDetailService orderDetailService;

    @RequestMapping(value = "/seveOrder", method = RequestMethod.POST)
    public String checkout(HttpSession session, ModelMap mm, HttpServletRequest request) {
        Date date = new Date();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        Donhang donhang = new Donhang();
        donhang.setHoten(request.getParameter("nameCustomer"));
        donhang.setNgaytao(date);
        donhang.setSodienthoai(request.getParameter("phoneCustomer"));
        donhang.setDiachi(request.getParameter("addressCustomer"));
        donhang.setEmail(request.getParameter("emailCustomer"));
        String keydonhang = "";
        SimpleDateFormat formatter = new SimpleDateFormat("MMddyyyyhhmmss");
        String strDate = formatter.format(date);
        keydonhang += strDate + request.getParameter("phoneCustomer");
        donhang.setKeydonhang(keydonhang);
        //donhang.setThanhtoan();
        this.orderService.saveOrder(donhang);
        int i = this.orderService.getIdOrder(keydonhang);
        //System.out.print(i);
        if (i != -1) {
            for (Item item : cart) {
                Donhang dh = new Donhang();
                dh.setMaHd(i);
                Chitiethd ct = new Chitiethd();
                ct.setSanpham(item.getSanpham());
                ct.setSoluong(item.getQuantity());
                ct.setDonhang(dh);
                ct.setTongtien(item.getSanpham().getGia() * item.getQuantity());
                ct.setThanhtien(item.getSanpham().getGia() * item.getQuantity() - item.getSanpham().getGia() * item.getQuantity() * item.getSanpham().getSale() / 100);
                //this.orderDetailService.saveOrderDetailService(ct);
            }
        }
        // remove cart
        session.removeAttribute("cart");

        return "success-page";
    }
}
