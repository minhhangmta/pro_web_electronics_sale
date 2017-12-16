/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;
import dao.impl.ProductDaoImpl;
import java.io.File;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import pojo.Danhmuc;
import pojo.Sanpham;
import util.Common;
import service.*;



/**
 *
 * @author Phong_Tung
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class AdProductsController {
     @Autowired
    ProductService productService;
     @Autowired
    CategoryService categoryService;
    @RequestMapping(value = "adproducts", method = RequestMethod.GET)
    public String Product(ModelMap mm){
        mm.put("listSanPham",productService.getListProduct("",0,0,0,"","",0));
        return "adproducts";
    }
    @RequestMapping(value = "/xoasanpham/{masanpham}", method = RequestMethod.GET)
   public String DeleteProduct(@PathVariable(value = "masanpham") int masanpham){
        ProductDaoImpl pr= new ProductDaoImpl();
        pr.deleteProduct(masanpham);
       return "redirect:/adproducts";
   }
   @RequestMapping(value = "themsanpham" , method = RequestMethod.GET)
   public String AddProdut(ModelMap mm){
       mm.put("newProduct", new Sanpham());
       return "addProduct";
   }
   @RequestMapping(value = "themsanpham" , method = RequestMethod.POST)
   public String AddProduct(ModelMap mm, HttpServletRequest request){
       Sanpham sanpham = new Sanpham();
        sanpham.setTensanpham(request.getParameter("tensanpham"));
        sanpham.setGia(Float.parseFloat(request.getParameter("giaban")));
        sanpham.setAnh(request.getParameter("file"));
        sanpham.setMota(request.getParameter("mota"));
        sanpham.setSale(Float.parseFloat(request.getParameter("sale")));
        sanpham.setSoluong(Integer.parseInt(request.getParameter("soluong")));
        product.setNhacungcap(Common.getNhaCCByID(Integer.parseInt(request.getParameter("nhacungcap"))));
        product.setDanhmuc(categoryService.getCategoryByID(Integer.parseInt(request.getParameter("danhmuc"))));
        product.setTrangthai(Common.getTrangThaiByID(Integer.parseInt(request.getParameter("trangthai"))));
        int t = this.productService.InsertSanPham(sanpham);
        switch (t) {
            case 1:
                return "redirect:/adproducts";
            case -1:
                mm.put("msgAccount", "Tài khoản đã tồn tại");
                return "redirect:/addProduct";
            default:
                mm.put("msgAccountErr", "Không thành công!!!Kiểm tra nhập liệu");
                return "redirect:/addProduct";
        }
   }
   Sanpham product;
   @RequestMapping(value = "suasanpham/{masanpham}", method = RequestMethod.GET)
   public String EditProduct(@ModelAttribute(value = "masanpham") int masanpham, ModelMap mm){
       product=productService.DetailSanPham(masanpham);
       mm.put("sp",product);
       mm.put("listNcc",Common.getListNCC());
       mm.put("listTT",Common.getListTrangThai());
       mm.put("listdanhmuc",categoryService.getListDanhMuc());
       return "editProduct";
   }
   @RequestMapping(value = "suasanpham", method = RequestMethod.POST)
   public String EditProduct(ModelMap mm, HttpServletRequest request){
        product.setTensanpham(request.getParameter("tensanpham"));
        product.setMota(request.getParameter("mota"));
        product.setAnh(request.getParameter("file"));
        product.setGia(Float.parseFloat(request.getParameter("giaban")));
        product.setSale(Float.parseFloat(request.getParameter("sale")));
        product.setSoluong(Integer.parseInt(request.getParameter("soluong")));
        product.setNhacungcap(Common.getNhaCCByID(Integer.parseInt(request.getParameter("nhacungcap"))));
        product.setDanhmuc(categoryService.getCategoryByID(Integer.parseInt(request.getParameter("danhmuc"))));
        product.setTrangthai(Common.getTrangThaiByID(Integer.parseInt(request.getParameter("trangthai"))));
        int t = this.productService.EditSanPham(product);
        switch (t) {
            case 1:
                return "redirect:/adproducts";
            case -1:
                mm.put("msgAccount", "Tài khoản đã tồn tại");
                return "redirect:/addProduct";
            default:
                mm.put("msgAccountErr", "Không thành công!!!Kiểm tra nhập liệu");
                return "redirect:/addProduct";
        }
   }
   
}
