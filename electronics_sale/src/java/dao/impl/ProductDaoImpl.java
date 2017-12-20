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
    public List<Sanpham> getListProduct(String proName, int typePrice, int limit,
            int offset, String sortByName, String sortByPrice, int sortType) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Sanpham> list = new ArrayList<>();
        try {
            StringBuilder hql = new StringBuilder("from Sanpham where tensanpham like :proName");
            if (typePrice > 0) {
                switch (typePrice) {
                    //gia < 100
                    case 1:
                        hql.append(" and gia < 100");
                        break;
                    //gia 100-500
                    case 2:
                        hql.append(" and gia between 100 and 500");
                        break;
                    //gia 500-1k
                    case 3:
                        hql.append(" and gia between 500 and 1000");
                        break;
                    //gia 1k-10k
                    case 4:
                        hql.append(" and gia between 1000 and 10000");
                        break;
                    //>10k
                    case 5:
                        hql.append(" and gia >10000");
                        break;
                    default:
                        break;
                }
            }
            switch (sortType) {
                //sort by name asc
                case 1:
                    hql.append(" order by tensanpham :sort");
                    break;
                //sort by price asc
                case 3:
                    hql.append(" order by gia :sort");
                    break;
                default:
                    break;
            }

            Query query = session.createQuery(hql.toString());
            query.setString("proName", "%" + proName + "%");
            if (sortType == 1) {
                query.setString("sort", sortByName);
            }
            if (sortType == 2) {
                query.setString("sort", sortByPrice);
            }
            //set LIMIT
            query.setFirstResult(offset);
            query.setMaxResults(limit);
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
    public Sanpham getProductByID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Sanpham sp = new Sanpham();
        try {
            Query query = (Query) session.createQuery("from Sanpham where ma_sp=:id");
            query.setInteger("id", id);
            sp = (Sanpham) query.uniqueResult();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return sp;
    }

    @Override
    public List<Sanpham> getListNewProduct(int maTT) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Sanpham> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Sanpham where ma_tt=:maTT");
            query.setInteger("maTT", maTT);
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
    public List<Sanpham> getListProductHotByDM(int maTT, int limit, int idDM) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Sanpham> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Sanpham where ma_tt=:maTT and ma_dm=:idDM");
            query.setInteger("maTT", maTT);
            query.setInteger("idDM", idDM);
            //set LIMIT
            query.setFirstResult(0);
            query.setMaxResults(limit);
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
    public int getMaDMBySP(int idSP) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int maDM = 0;
        try {
            Query query = (Query) session.createQuery("select dm.maDm from Sanpham sp inner join sp.danhmuc dm where sp.maSp=:idSP");
            query.setInteger("idSP", idSP);
            maDM = (Integer) query.uniqueResult();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return maDM;
    }

//    public static void main(String[] args) {
//        List<Sanpham> list = new ProductDaoImpl().getListProduct("", 0, 9, 0, "", "", "");
//        list.forEach((sanpham) -> {
//            System.out.println(sanpham.getTensanpham());
//        });
//        System.out.println( new ProductDaoImpl().getMaDMBySP(2));
//    }
    @Override
    public List<Sanpham> getLimitProByIdCat(int idCat, int limit, int idPrePro) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ArrayList<Sanpham> list = new ArrayList<>();
        try {
            Query query = session.createQuery("from Sanpham where ma_dm=:idCat and ma_sp!=:idPrePro");
            query.setInteger("idCat", idCat);
            query.setInteger("idPrePro", idPrePro);
            //set LIMIT
            query.setFirstResult(0);
            query.setMaxResults(limit);
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
    public int getTotalProduct(int price, String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int result = 0;
        try {
            StringBuilder hql = new StringBuilder("select count(*) from Sanpham where tensanpham like :name ");
            Query query = (Query) session.createQuery(hql.toString());
            query.setString("name", "%" + name + "%");
            if (price > 0) {
                switch (price) {
                    //gia < 100
                    case 1:
                        hql.append(" and gia < 100");
                        break;
                    //gia 100-500
                    case 2:
                        hql.append(" and gia between 100 and 500");
                        break;
                    //gia 500-1k
                    case 3:
                        hql.append(" and gia between 500 and 1000");
                        break;
                    //gia 1k-10k
                    case 4:
                        hql.append(" and gia between 1000 and 10000");
                        break;
                    //>10k
                    case 5:
                        hql.append(" and gia >10000");
                        break;
                    default:
                        break;
                }
            }
            result = (Integer) query.uniqueResult();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return result;
    }
}
