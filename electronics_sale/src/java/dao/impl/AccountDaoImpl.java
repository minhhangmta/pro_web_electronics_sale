/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import pojo.Sanpham;
import pojo.Taikhoan;
import util.HibernateUtil;
import dao.AccountDao;

/**
 *
 * @author tranv
 */
@Repository
public class AccountDaoImpl implements AccountDao{

    @Override
    public Taikhoan login(String userName, String passWord) {
       Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction transaction=null;
        try{
            transaction=session.beginTransaction();
            Query query=session.createQuery("from Taikhoan where username=:username and password=:password");
            query.setString("username", userName);
            query.setString("password", passWord);
            Taikhoan tk=(Taikhoan) query.uniqueResult();
            transaction.commit();
            return tk;
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
    
}
