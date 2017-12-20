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
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author tranv
 */
@Repository
public class AccountDaoImpl implements AccountDao {

    @Override
    public Taikhoan login(String userName, String passWord) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from Taikhoan where username=:username and password=:password");
            query.setString("username", userName);
            query.setString("password", passWord);
            Taikhoan tk = (Taikhoan) query.uniqueResult();
            transaction.commit();
            return tk;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public boolean existUser(String username, String password) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        boolean check = false;
        try {
            Query query = session.createQuery("from Taikhoan where username=:username and password=:password");
            query.setString("username", username);
            query.setString("password", password);
            List result = query.list();
            if (!result.isEmpty()) {
                check = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return check;
    }

    @Override
    public List<Taikhoan> getListAccount() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Taikhoan> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Taikhoan");
            list = (ArrayList<Taikhoan>) query.list();

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return list;
    }

    @Override
    public int insertAccount(Taikhoan account) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            if (CheckAccount(account.getUsername()) == 0) {
                session.save(account);
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
    
    public int editAccount(Taikhoan account) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();        
                session.update(account);
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
    public int CheckAccount(String username) {
        List<Taikhoan> list = new AccountDaoImpl().getListAccount();
        int a = 0;
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getUsername() == null ? username == null : list.get(i).getUsername().equals(username)) {
                a = a + 1;
            }
        }
        return a;
    }
    @Override
    public Taikhoan getAccountByID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = (Query) session.createQuery("from Taikhoan where maTk=:id");
            query.setInteger("id", id);
            Taikhoan sp = (Taikhoan) query.uniqueResult();
            transaction.commit();
            return sp;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
    public Taikhoan getAccountByUser(String user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = (Query) session.createQuery("from Taikhoan where username=:user");
            query.setString("user", user);
            Taikhoan sp = (Taikhoan) query.uniqueResult();
            transaction.commit();
            return sp;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
    public int DeleteAccount(int id) {
        int check = 0;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tran = session.beginTransaction();
        try {
            Taikhoan taikhoan = new Taikhoan();
            taikhoan = getAccountByID(id);
            session.delete(taikhoan);
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
