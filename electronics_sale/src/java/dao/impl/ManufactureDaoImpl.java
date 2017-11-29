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
import pojo.Nhacungcap;
import util.HibernateUtil;
import dao.ManufactureDao;

/**
 *
 * @author tranv
 */
@Repository
public class ManufactureDaoImpl implements ManufactureDao{
    @Override
    public List<Nhacungcap> getListNhaCungCap(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            Query query = session.createQuery("from Nhacungcap");
            ArrayList<Nhacungcap> list = (ArrayList<Nhacungcap>) query.list();
            return list;
        } catch (HibernateJdbcException ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
//    public static void main(String[] args) {
//        List<Nhacungcap> list = new NhaCungCapDaoImpl().getListNhaCungCap();
//        list.forEach((ncc) -> {
//            System.out.println(ncc.getAnh());
//        });
//    }
}
