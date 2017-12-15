/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.OrderDetailDao;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import pojo.Chitiethd;
import pojo.Donhang;
import pojo.Sanpham;
import util.HibernateUtil;

/**
 *
 * @author tranv
 */
@Repository
public class OrderDetailDaoImpl implements OrderDetailDao{

    @Override
    public boolean saveOrderDetailDao(Chitiethd cthd) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(cthd);
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
    public static void main(String arg[]){
        OrderDaoImpl orderDaoImpl= new OrderDaoImpl();
        Donhang donhang= new Donhang("Trần Việt Chức", new Date(),"098","vietchucmta11@gmail.com","vt-vp");
        Donhang dh= new Donhang();
        dh.setMaHd(orderDaoImpl.getIdOrder(donhang));
        Sanpham sp=new Sanpham();
        sp= new ProductDaoImpl().getDetailProduct(8);
        Chitiethd ct= new Chitiethd();
        ct.setDonhang(dh);
        ct.setSanpham(sp);
        ct.setSoluong(10);
        ct.setTongtien(sp.getGia()*10);
        ct.setThanhtien(sp.getGia()*10-sp.getGia()*10*sp.getSale()/100);
        boolean x= new OrderDetailDaoImpl().saveOrderDetailDao(ct);
        System.out.println(""+x);
    }
}
