package pojo;
// Generated Nov 29, 2017 9:53:13 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Trangthai generated by hbm2java
 */
public class Trangthai  implements java.io.Serializable {


     private int maTt;
     private String tentrangthai;
     private Set lienhes = new HashSet(0);
     private Set donhangs = new HashSet(0);
     private Set sanphams = new HashSet(0);

    public Trangthai() {
    }

	
    public Trangthai(int maTt) {
        this.maTt = maTt;
    }
    public Trangthai(int maTt, String tentrangthai, Set lienhes, Set donhangs, Set sanphams) {
       this.maTt = maTt;
       this.tentrangthai = tentrangthai;
       this.lienhes = lienhes;
       this.donhangs = donhangs;
       this.sanphams = sanphams;
    }
   
    public int getMaTt() {
        return this.maTt;
    }
    
    public void setMaTt(int maTt) {
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


