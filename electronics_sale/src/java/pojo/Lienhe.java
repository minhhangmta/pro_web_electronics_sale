package pojo;
// Generated Nov 29, 2017 9:53:13 AM by Hibernate Tools 4.3.1



/**
 * Lienhe generated by hbm2java
 */
public class Lienhe  implements java.io.Serializable {


     private int maLh;
     private Trangthai trangthai;
     private String email;
     private String lienhe;

    public Lienhe() {
    }

	
    public Lienhe(int maLh, String email) {
        this.maLh = maLh;
        this.email = email;
    }
    public Lienhe(int maLh, Trangthai trangthai, String email, String lienhe) {
       this.maLh = maLh;
       this.trangthai = trangthai;
       this.email = email;
       this.lienhe = lienhe;
    }
   
    public int getMaLh() {
        return this.maLh;
    }
    
    public void setMaLh(int maLh) {
        this.maLh = maLh;
    }
    public Trangthai getTrangthai() {
        return this.trangthai;
    }
    
    public void setTrangthai(Trangthai trangthai) {
        this.trangthai = trangthai;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getLienhe() {
        return this.lienhe;
    }
    
    public void setLienhe(String lienhe) {
        this.lienhe = lienhe;
    }




}


