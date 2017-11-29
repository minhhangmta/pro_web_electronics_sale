/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import pojo.Lienhe;

/**
 *
 * @author tranv
 */
public interface ContactDao {
    public boolean insertContact(Lienhe lh);
    public boolean  deleteContact(Lienhe lh);
    public List<Lienhe> getListContact();
}
