/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.CategoryService;
import service.ProductService;
import util.Common;

/**
 *
 * @author tranv
 */
@Controller
@Configuration
@ComponentScan("service.impl")
public class ProductController {

    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;

    @RequestMapping("/product/{id}")
    public String ListProductByCategoryID(ModelMap mm, @PathVariable("id") int categoryID) {
        mm.put("listSanPham", productService.getListProductByCategoryID(categoryID));
        mm.put("listDanhMuc", categoryService.getListDanhMuc());
        return "product";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String product(ModelMap mm, HttpServletRequest request) {
        String proName = "";
        int typePrice = 0;
        return productPost(mm, proName, request);
    }

    @RequestMapping(value = {"/product"}, method = RequestMethod.POST)
    public String productPost(ModelMap mm,
            @RequestParam(value = "proName", required = false) String proName,
            HttpServletRequest request
    ) {
        HttpSession session = request.getSession();
        mm.put("listDanhMuc", categoryService.getListDanhMuc());
        int limit = 9;
        int offset = 0;
        String sortByName = "ASC";
        String sortByPrice = "ASC";
        int totalRecord = 0;
        int typePrice = Common.tryParseInt(Common.getRequestValue(request, "search", "-1"));
        int sortType = Common.tryParseInt(Common.getRequestValue(request, "sortType", "0"));
        if (proName == null) {
            proName = "";
        }
        if (typePrice >= 0) {
            proName = Common.getSessionValue(session, "name", "");
        }

        if (sortType > 0) {
            switch (sortType) {
                case 1:
                    sortByName = request.getParameter("sort");
                    break;
                case 2:
                    break;
            }
//            String sortByPrice = Common.getRequestValue(request, "sort", "ASC");
        }
        proName = Common.replaceWildcard(proName);
        session.setAttribute("name", proName);

        totalRecord = productService.getTotalProduct(typePrice, proName);
        if (totalRecord > 0) {
            mm.addAttribute("total", totalRecord);
//            request.setAttribute("total", totalRecord);
        }
        mm.put("listSanPham", productService.getListProduct(proName, typePrice,
                limit, offset, sortByName, sortByPrice, sortType));

        mm.put("proName", proName);
        mm.put("sortByName", sortByName);

        return "product";
    }

}
