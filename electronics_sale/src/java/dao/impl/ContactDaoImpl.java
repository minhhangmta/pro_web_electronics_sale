/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.ContactDao;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import pojo.Lienhe;
import pojo.Trangthai;
import util.HibernateUtil;
/**
 *
 * @author tranv
 */
@Repository
public class ContactDaoImpl implements ContactDao{

    @Override
    public boolean insertContact(Lienhe lh) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Lienhe contact=new Lienhe();
            contact=lh;
            Trangthai trangthai=new Trangthai();
            trangthai.setMaTt(1);
            contact.setTrangthai(trangthai);
            session.save(contact);
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
    public boolean deleteContact(Lienhe lh) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Lienhe> getListContact() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
//    public static void main(String[] args) {
//        Lienhe lh=new Lienhe("Đỗ Văn Phong","vietchucmta11@gmail.com","0987711234","anh yêu em");
//        boolean x = new ContactDaoImpl().insertContact(lh);
//        System.out.println(x);
//    }
}
