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

//    public static void main(String[] args) {
//        String userName="Vietchucmta";
//        String passWord="Vietchucmta";
//        Taikhoan tk=new AccountDaoImpl().login(userName, passWord);
//        System.out.println("email"+tk.getEmail());
//    }
    // lay danh sach tai khoan
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

    // check tai khoan
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

//    public static void main(String[] args) {
//        Taikhoan acc= new Taikhoan("NguyenSy","Vietchucmta","Trần Việt Chức","Vietchucmta@gmail.com","09888","abc");
//        int x=new AccountDaoImpl().insertAccount(acc);
//        //int x = new AccountDaoImpl().insertAccount(acc);
//       // int x=new AccountDaoImpl().CheckAccount("Vietchucmta");
//        System.out.println("aa:" + x);
//    }
}
