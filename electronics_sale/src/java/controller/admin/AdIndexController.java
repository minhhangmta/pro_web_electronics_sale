/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Phong_Tung
 */
@Controller
public class AdIndexController {
    @RequestMapping(value = "/adindex", method = RequestMethod.GET)
    public String index() {
        return "adindex";
    }
}
