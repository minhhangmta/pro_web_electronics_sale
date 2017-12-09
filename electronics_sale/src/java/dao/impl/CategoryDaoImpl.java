/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateJdbcException;
import org.springframework.stereotype.Repository;
import pojo.Danhmuc;
import util.HibernateUtil;
import dao.CategoryDao;

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

//    public static void main(String[] args) {
//        List<Danhmuc> list = new CategoryDaoImpl().getListDanhMuc();
//        list.forEach((danhmuc) -> {
//            System.out.println(danhmuc.getTendanhmuc());
//        });
//    }
}
