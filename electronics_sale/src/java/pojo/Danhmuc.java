package pojo;
// Generated Dec 2, 2017 3:44:02 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Danhmuc generated by hbm2java
 */
public class Danhmuc  implements java.io.Serializable {


     private Integer maDm;
     private int maDmcha;
     private String tendanhmuc;
     private Set sanphams = new HashSet(0);

    public Danhmuc() {
    }

	
    public Danhmuc(int maDmcha) {
        this.maDmcha = maDmcha;
    }
    public Danhmuc(int maDmcha, String tendanhmuc, Set sanphams) {
       this.maDmcha = maDmcha;
       this.tendanhmuc = tendanhmuc;
       this.sanphams = sanphams;
    }
   
    public Integer getMaDm() {
        return this.maDm;
    }
    
    public void setMaDm(Integer maDm) {
        this.maDm = maDm;
    }
    public int getMaDmcha() {
        return this.maDmcha;
    }
    
    public void setMaDmcha(int maDmcha) {
        this.maDmcha = maDmcha;
    }
    public String getTendanhmuc() {
        return this.tendanhmuc;
    }
    
    public void setTendanhmuc(String tendanhmuc) {
        this.tendanhmuc = tendanhmuc;
    }
    public Set getSanphams() {
        return this.sanphams;
    }
    
    public void setSanphams(Set sanphams) {
        this.sanphams = sanphams;
    }




}


