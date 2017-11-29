/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;

import dao.impl.ManufactureDaoImpl;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import pojo.Nhacungcap;
import service.ManufactureService;

/**
 *
 * @author tranv
 */
@Service 
@Transactional
public class ManufactureServiceImpl implements ManufactureService{
    @Override
    public List<Nhacungcap> getListNhaCungCap(){
        return new ManufactureDaoImpl().getListNhaCungCap();
    }
}
