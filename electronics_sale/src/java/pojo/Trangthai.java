package pojo;
// Generated Dec 2, 2017 3:44:02 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Trangthai generated by hbm2java
 */
public class Trangthai  implements java.io.Serializable {


     private Integer maTt;
     private String tentrangthai;
     private Set lienhes = new HashSet(0);
     private Set donhangs = new HashSet(0);
     private Set sanphams = new HashSet(0);

    public Trangthai() {
    }

    public Trangthai(String tentrangthai, Set lienhes, Set donhangs, Set sanphams) {
       this.tentrangthai = tentrangthai;
       this.lienhes = lienhes;
       this.donhangs = donhangs;
       this.sanphams = sanphams;
    }
   
    public Integer getMaTt() {
        return this.maTt;
    }
    
    public void setMaTt(Integer maTt) {
        this.maTt = maTt;
    }
    public String getTentrangthai() {
        return this.tentrangthai;
    }
    
    public void setTentrangthai(String tentrangthai) {
        this.tentrangthai = tentrangthai;
    }
    public Set getLienhes() {
        return this.lienhes;
    }
    
    public void setLienhes(Set lienhes) {
        this.lienhes = lienhes;
    }
    public Set getDonhangs() {
        return this.donhangs;
    }
    
    public void setDonhangs(Set donhangs) {
        this.donhangs = donhangs;
    }
    public Set getSanphams() {
        return this.sanphams;
    }
    
    public void setSanphams(Set sanphams) {
        this.sanphams = sanphams;
    }




}


