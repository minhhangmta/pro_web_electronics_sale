/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.ContactDao;
import dao.impl.ContactDaoImpl;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;
import pojo.Lienhe;
import service.ContactService;

/**
 *
 * @author tranv
 */
@Service
@Transactional 
@ComponentScan("dao.impl")
public class ContactServiceImpl implements ContactService{

    @Autowired
    ContactDao contactDao;
    
    @Override
    public boolean insertContact(Lienhe lh) {
        return contactDao.insertContact(lh);
    }

    @Override
    public boolean deleteContact(Lienhe lh) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Lienhe> getListContact() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
