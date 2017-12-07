/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import pojo.Sanpham;
import util.HibernateUtil;
import dao.ProductDao;

/**
 *
 * @author tranv
 */
@Repository
public class ProductDaoImpl implements ProductDao {

    @Override
    public List<Sanpham> getListProduct() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Sanpham> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Sanpham");
            list = (ArrayList<Sanpham>) query.list();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return list;
    }

    @Override
    public List<Sanpham> getListProductByCategoryID(int categoryID) {
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        Transaction transaction = null;
//        try {
//            transaction = session.beginTransaction();
//            Query query = (Query) session.createQuery("from Sanpham where ma_dm=:categoryID");
//            query.setLong("categoryID", categoryID);
//            ArrayList<Sanpham> list = (ArrayList<Sanpham>) query.list();
//            transaction.commit();
//            return list;
//        } catch (Exception ex) {
//            if (transaction != null) {
//                transaction.rollback();
//            }
//            ex.printStackTrace();
//        } finally {
//            session.flush();
//            session.close();
//        }
        return null;
    }
//    public static void main(String[] args) {
//        List<Sanpham> list = new ProductDaoImpl().getListSanPham();
//        list.forEach((sp) -> {
//            System.out.println(sp.getTensanpham());
//        });
//    }
}
