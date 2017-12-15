/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

    public static int tryParseInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String getRequestValue(HttpServletRequest request,
            String key, String valueDefault) {
        if (request.getParameter(key) == null) {
            return valueDefault;
        } else {
            return request.getParameter(key);
        }
    }
    
    public static String getSessionValue(HttpSession session,
            String key, String valueDefault) {
        if (session.getAttribute(key) == null) {
            return valueDefault;
        } else {
            return session.getAttribute(key).toString();
        }
    }
}
