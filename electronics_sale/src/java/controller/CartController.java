/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
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
import pojo.Item;
import pojo.Sanpham;
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
    @RequestMapping(value="/checkout")
    public String checkout(){
        return "checkout";
    }
}
