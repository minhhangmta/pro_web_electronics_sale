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
import service.CategoryService;
import dao.impl.CategoryDaoImpl;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestMethod;
import pojo.Danhmuc;
/**
 *
 * @author Phong_Tung
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class AdCategoryController {
    @Autowired
    CategoryService categoryService;
    @RequestMapping(value = "adcategory")
    public String Category(ModelMap mm){
        mm.put("listdanhmuc",categoryService.getListDanhMuc());
        return "adcategory";
    }
    @RequestMapping(value = "xoadanhmuc/{madanhmuc}", method = RequestMethod.GET)
    public String DeleteCategory( @ModelAttribute(value="madanhmuc")int madanhmuc){
        CategoryDaoImpl cat= new CategoryDaoImpl();
        cat.DeleteCategory(madanhmuc);
        return "redirect:/adcategory";
    }
     @RequestMapping(value = "themdanhmuc", method = RequestMethod.GET)
    public String AddCategory(ModelMap mm){
         mm.put("newcate", new Danhmuc());
        return "addCategory";
    }
     @RequestMapping(value = "themdanhmuc", method = RequestMethod.POST)
    public String AddCategory(ModelMap mm, HttpServletRequest request){
         Danhmuc dm = new Danhmuc();
        dm.setTendanhmuc(request.getParameter("tendanhmuc"));
        dm.setMaDmcha(Integer.parseInt(request.getParameter("danhmuccha")));
        int t = this.categoryService.insertCategory(dm);
        switch (t) {
            case 1:
                return "redirect:/adcategory";
            case -1:
                mm.put("msgAccount", "Tài khoản đã tồn tại");
                return "redirect:/addCategory";
            default:
                mm.put("msgAccountErr", "Không thành công!!!Kiểm tra nhập liệu");
                return "redirect:/addCategory";
        }
    }
    Danhmuc category;
    @RequestMapping(value = "suadanhmuc/{madanhmuc}", method = RequestMethod.GET)
    public String EditCategory(ModelMap mm, @ModelAttribute(value = "madanhmuc") int madanhmuc){
       category=categoryService.getCategoryByID(madanhmuc);
        mm.put("cate",category );
        mm.put("listdanhmuc",categoryService.getListDanhMuc());
        return "editCategory";
    }
    @RequestMapping(value = "suadanhmuc", method = RequestMethod.POST)
    public String EditCategory(ModelMap mm, HttpServletRequest request){
        category.setMaDmcha(Integer.parseInt(request.getParameter("danhmuccha")));
        category.setTendanhmuc(request.getParameter("tendanhmuc"));    
        int t = this.categoryService.editCategory(category);
        switch (t) {
            case 1:
                return "redirect:/adcategory";
            case -1:
                mm.put("msgAccount", "Danh muc đã tồn tại");
                return "redirect:/editCategory";
            default:
                mm.put("msgAccountErr", "Không thành công!!!Kiểm tra nhập liệu");
                return "redirect:/editCategory";
        }
    }
}
