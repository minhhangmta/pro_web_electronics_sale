/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.OrderDao;
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
public class OrderDaoImpl implements OrderDao{


    @Override
    public boolean saveOrder(Donhang donhang) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Donhang dh=new Donhang();
            dh=donhang;
            Trangthai trangthai=new Trangthai();
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
    public int getIdOrder(Donhang donhang) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from Donhang where hoten=:hoten and sodienthoai=:sodienthoai and email=:email and diachi=:diachi");
            query.setString("hoten", donhang.getHoten());
            query.setString("sodienthoai", donhang.getSodienthoai());
            query.setString("email", donhang.getEmail());
            query.setString("diachi", donhang.getDiachi());
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
    
//    public static void main(String arg[]){
//        
//        OrderDaoImpl or= new OrderDaoImpl();
//        Donhang dh;
//        dh = new Donhang("Trần Việt Chức", new Date(),"0980","vietchucmta11@gmail.com","vt-vp");
//        //boolean x= or.saveOrder(dh);
//        int x=or.getIdOrder(dh);
//        System.out.println(""+x);
//    }
}
