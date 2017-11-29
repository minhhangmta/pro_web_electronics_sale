/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import pojo.Lienhe;

/**
 *
 * @author tranv
 */
public interface ContactService {
    public boolean insertContact(Lienhe lh);
    public boolean  deleteContact(Lienhe lh);
    public List<Lienhe> getListContact();
}
