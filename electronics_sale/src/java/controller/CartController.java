/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pojo.Chitiethd;
import pojo.Donhang;
import pojo.Item;
import service.OrderDetailService;

import service.OrderService;
import service.ProductService;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")
@RequestMapping(value = "/shopping")
public class CartController {

    @Autowired
    ProductService ps;

    @RequestMapping(value = "/cart/{id}", method = RequestMethod.GET)
    public String cart(@PathVariable(value = "id") int id, ModelMap mm, HttpSession session) {
        if (session.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<Item>();
            cart.add(new Item(this.ps.getProductByID(id), 1));  // nếu cart rỗng thì thêm vào cart
            session.setAttribute("cart", cart);
        } else {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = isExisting(id, session);
            if (index == -1) {
                cart.add(new Item(this.ps.getProductByID(id), 1));
            } else {
                int quantity = cart.get(index).getQuantity() + 1; // nếu sản phẩm đã có trong cart thì tăng số lượng lên
                cart.get(index).setQuantity(quantity);
            }
            session.setAttribute("cart", cart);
        }
        return "cart";
    }
    // kiểm tra danh sách sản phẩm trong cart
    public int isExisting(int id, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getSanpham().getMaSp() == id) {
                return i;
            }
        }
        return -1;
    }
    // delete sản phẩm trong cart theo id
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value = "id") int id, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = isExisting(id, session);
        cart.remove(index);
        session.setAttribute("cart", cart);
        return "cart";
    }
    
    // update giỏ hàng
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update( HttpServletRequest request,HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        String []quantity=request.getParameterValues("quantity");
        
        for (int i = 0; i < cart.size(); i++) {
            cart.get(i).setQuantity(Integer.parseInt(quantity[i]));
        }
        session.setAttribute("cart", cart);
        return "cart";
    }
    
    // checkout đơn hàng
    @RequestMapping(value="/checkout", method = RequestMethod.GET)
    public String checkout(){
        return "checkout";
    }
    @Autowired
    OrderService orderService;
    
    @Autowired
    OrderDetailService orderDetailService;
    
    @RequestMapping(value = "/seveOrder",method = RequestMethod.POST)
    public String checkout(HttpSession session,ModelMap mm, HttpServletRequest request){
        List<Item> cart= (List<Item>) session.getAttribute("cart");
        Donhang donhang=new Donhang();
        donhang.setHoten(request.getParameter("nameCustomer"));
        donhang.setNgaytao(new Date());
        donhang.setSodienthoai(request.getParameter("phoneCustomer"));
        donhang.setDiachi(request.getParameter("addressCustomer"));
        donhang.setEmail(request.getParameter("emailCustomer"));
        //donhang.setThanhtoan();
        orderService.saveOrder(donhang);
        int i= orderService.getIdOrder(donhang);
        if(i!=-1){
            for(Item item:cart){
                Donhang dh= new Donhang();
                dh.setMaHd(i);
                Chitiethd ct= new Chitiethd();
                ct.setSanpham(item.getSanpham());
                ct.setSoluong(item.getQuantity());
                ct.setDonhang(dh);
                ct.setTongtien(item.getSanpham().getGia()*item.getQuantity());
                ct.setThanhtien(item.getSanpham().getGia()*item.getQuantity()-item.getSanpham().getGia()*item.getQuantity()*item.getSanpham().getSale()/100);
                orderDetailService.saveOrderDetailService(ct);
            }
        }
        // remove cart
        session.removeAttribute("cart");
        
        return "success-page";
    }
}
