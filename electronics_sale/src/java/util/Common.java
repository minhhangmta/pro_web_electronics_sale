/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.ArrayList;
import java.util.List;
import pojo.Sanpham;

/**
 *
 * @author minhh
 */
public class Common {

    public static String replaceWildcard(String str) {
        if (!str.isEmpty() && str != null) {
            str.replaceAll("//", "////");
            str.replaceAll("%", "//%");
            str.replaceAll("_", "//_");
        }
        return str.trim();
    }
}
