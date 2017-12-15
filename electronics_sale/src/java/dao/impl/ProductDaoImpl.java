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
import org.hibernate.SessionFactory;
import util.*;
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
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Sanpham> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Sanpham where ma_dm=:categoryID");
            query.setInteger("categoryID", categoryID);
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
    public Sanpham getDetailProduct(int id) {
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction transaction=null;
        try{
            transaction=session.beginTransaction();
            Query query=(Query)session.createQuery("from Sanpham where maSp=:id");
            query.setInteger("id", id);
            Sanpham sp=(Sanpham) query.uniqueResult();
            transaction.commit();
            return sp;
        }
        catch(Exception ex){
            if(transaction!=null){
                transaction.rollback();
            }
            ex.printStackTrace();
        }
        finally{
            session.flush();
            session.close();
        }
        return null;
    }
     @Override
    public int addProduct(Sanpham sanpham){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            if (CheckProduct(sanpham.getTensanpham()) == 0) {
                session.save(sanpham);
                transaction.commit();
                return 1;
            } else {
                return -1;
            }
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return 0;
    }
    public int CheckProduct(String tensanpham) {
        List<Sanpham> list = new ProductDaoImpl().getListProduct();
        int a = 0;
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getTensanpham()== null ? tensanpham == null : list.get(i).getTensanpham().equals(tensanpham)) {
                a = a + 1;
            }
        }
        return a;
    }
     @Override
    public int editProduct(Sanpham sanpham){
       Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
                session.update(sanpham);
                transaction.commit();
                return 1;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return 0;
    }
     @Override
    public int deleteProduct(int id){
        int check = 0;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tran = session.beginTransaction();
        try {
            Sanpham sanpham = new Sanpham();
            sanpham = getDetailProduct(id);
            session.delete(sanpham);
            tran.commit();
            check = 1;
        } catch (Exception e) {
            tran.rollback();
        } finally {
            session.close();
        }
        return check;
    }
    
}
