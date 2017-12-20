/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.OrderDao;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import pojo.Donhang;
import pojo.Trangthai;
import util.HibernateUtil;

/**
 *
 * @author tranv
 */
@Repository
public class OrderDaoImpl implements OrderDao {

    @Override
    public boolean saveOrder(Donhang donhang) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Donhang dh = new Donhang();
            dh = donhang;
            Trangthai trangthai = new Trangthai();
            trangthai.setMaTt(1);
            dh.setTrangthai(trangthai);
            session.save(dh);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return false;
    }

    @Override
    public int getIdOrder(String keydonhang) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from Donhang where keydonhang=:keydonhang ");
            query.setString("keydonhang", keydonhang);
            Donhang dh = (Donhang) query.uniqueResult();
            transaction.commit();
            return dh.getMaHd();
        } catch (Exception ex) {
//            if (transaction != null) {
//                transaction.rollback();
//            }
            return -1;
        } finally {
            session.flush();
            session.close();
        }
        //return -1;

    }

//    public static void main(String arg[]) {
//
//        OrderDaoImpl or = new OrderDaoImpl();
//        Donhang dh;
//        Date date = new Date();
//        dh = new Donhang("Trần Việt Chức", date, "1111", "vietchucmta11@gmail.com", "vt-vp", "");
//        String keydonhang = "";
//        SimpleDateFormat formatter = new SimpleDateFormat("MMddyyyyhhmmss");
//        String strDate = formatter.format(date);
//        keydonhang += strDate + dh.getSodienthoai();
//        dh.setKeydonhang(keydonhang);
//
//        boolean x= or.saveOrder(dh);
//        int i = or.getIdOrder(dh.getKeydonhang());
//        System.out.println("" + x+"/"+i);
//    }
}
