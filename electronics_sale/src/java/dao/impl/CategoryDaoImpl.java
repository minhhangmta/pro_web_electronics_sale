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
import org.springframework.orm.hibernate3.HibernateJdbcException;
import org.springframework.stereotype.Repository;
import pojo.Danhmuc;
import util.HibernateUtil;
import dao.CategoryDao;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import pojo.Sanpham;

/**
 *
 * @author tranv
 */
@Repository

public class CategoryDaoImpl implements CategoryDao {

    @Override
    public List<Danhmuc> getListDanhMuc() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Danhmuc> listCategory = new ArrayList<>();
        try {
            Query query = session.createQuery("from Danhmuc");
            listCategory = (ArrayList<Danhmuc>) query.list();
        } catch (HibernateJdbcException ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return listCategory;
    }
    @Override
    public Danhmuc getCategoryByID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = (Query) session.createQuery("from Danhmuc where maDm=:id");
            query.setInteger("id", id);
            Danhmuc sp = (Danhmuc) query.uniqueResult();
            transaction.commit();
            return sp;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
         return null;
    }
    @Override
    public int DeleteCategory(int id) {
        int check = 0;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tran = session.beginTransaction();
        try {
            Danhmuc danhmuc = new Danhmuc();
            danhmuc = getCategoryByID(id);
            session.delete(danhmuc);
            tran.commit();
            check = 1;
        } catch (Exception e) {
            tran.rollback();
        } finally {
            session.close();
        }
        return check;
    }
    @Override
    public int insertCategory(Danhmuc cate) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            if (CheckCategory(cate.getTendanhmuc()) == 0) {
                session.save(cate);
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
    @Override
    public int editCategory(Danhmuc cate){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();   
                session.update(cate);
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
    public int CheckCategory(String namecategory) {
        List<Danhmuc> list = new CategoryDaoImpl().getListDanhMuc();
        int a = 0;
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getTendanhmuc() == null ? namecategory == null : list.get(i).getTendanhmuc().equals(namecategory)) {
                a = a + 1;
            }
        }
        return a;
    }
    

//    public boolean existDanhMucConByID(int id) {
//        boolean check = false;
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        try {
//            Query query = session.createQuery("from Danhmuc where ma_dm=:id and ma_dmcha!=0 ");
//            query.setInteger("id", id);
//            List result = query.list();
//            if (!result.isEmpty()) {
//                check = true;
//            }
//        } catch (HibernateJdbcException ex) {
//            ex.printStackTrace();
//        } finally {
//            session.flush();
//            session.close();
//        }
//        return check;
//    }
//    public static void main(String[] args) {
//        List<Danhmuc> list = new CategoryDaoImpl().getListDanhMuc();
//        list.forEach((danhmuc) -> {
//            System.out.println(danhmuc.getTendanhmuc());
//        });
//        System.out.println(new CategoryDaoImpl().existDanhMucConByID(13));
//    }
    
    @Override
    public List<Danhmuc> getListDanhMucCha() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Danhmuc> listCategory = new ArrayList<>();
        try {
            Query query = session.createQuery("from Danhmuc where ma_dmcha = 0");
            listCategory = (ArrayList<Danhmuc>) query.list();
        } catch (HibernateJdbcException ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return listCategory;
    } 
    
}
