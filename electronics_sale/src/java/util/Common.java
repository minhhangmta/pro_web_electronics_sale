/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;
import dao.impl.AccountDaoImpl;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Sanpham;
import pojo.*;

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
    public static String validateLogin(String username,String password){
        String errMsg="";
        boolean existLogin = new AccountDaoImpl().existUser(username, password);
        if(!existLogin){
            errMsg="Invalid username or password!";
        }
        if (username.isEmpty() || username == null) {
            errMsg = "Press username!";
        }
        if (password.isEmpty() || password == null) {
            errMsg = "Press password!";
        }
        if(username.isEmpty() && password.isEmpty() ){
            errMsg = "Press username & password!";
        }
        return errMsg;
    }
    public static List<Nhacungcap> getListNCC() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Nhacungcap> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Nhacungcap");
            list = (ArrayList<Nhacungcap>) query.list();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return list;
    }
    public static List<Trangthai> getListTrangThai() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Trangthai> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Trangthai");
            list = (ArrayList<Trangthai>) query.list();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return list;
    }
    public static List<Quyen> getListQuyen() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Quyen> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Quyen");
            list = (ArrayList<Quyen>) query.list();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return list;
    }
    public static Nhacungcap  getNhaCCByID(int id) {
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = (Query) session.createQuery("from Nhacungcap where maNcc=:id");
            query.setInteger("id", id);
            Nhacungcap ncc = (Nhacungcap) query.uniqueResult();
            transaction.commit();
            return ncc;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
    public static Trangthai  getTrangThaiByID(int id) {
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = (Query) session.createQuery("from Trangthai where maTt=:id");
            query.setInteger("id", id);
           Trangthai tt = (Trangthai) query.uniqueResult();
            transaction.commit();
            return tt;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
    public static Quyen  getQuyenByID(int id) {
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = (Query) session.createQuery("from Quyen where maQ=:id");
            query.setInteger("id", id);
            Quyen q = (Quyen) query.uniqueResult();
            transaction.commit();
            return q;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
    
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
