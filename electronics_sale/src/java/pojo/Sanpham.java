package pojo;
// Generated Dec 2, 2017 3:44:02 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Sanpham generated by hbm2java
 */
public class Sanpham  implements java.io.Serializable {


     private Integer maSp;
     private Danhmuc danhmuc;
     private Nhacungcap nhacungcap;
     private Trangthai trangthai;
     private String tensanpham;
     private String mota;
     private String anh;
     private Float gia;
     private Float sale;
     private Integer soluong;
     private Set chitiethds = new HashSet(0);

    public Sanpham() {
    }

    public Sanpham(Danhmuc danhmuc, Nhacungcap nhacungcap, Trangthai trangthai, String tensanpham, String mota, String anh, Float gia, Float sale, Integer soluong, Set chitiethds) {
       this.danhmuc = danhmuc;
       this.nhacungcap = nhacungcap;
       this.trangthai = trangthai;
       this.tensanpham = tensanpham;
       this.mota = mota;
       this.anh = anh;
       this.gia = gia;
       this.sale = sale;
       this.soluong = soluong;
       this.chitiethds = chitiethds;
    }
   
    public Integer getMaSp() {
        return this.maSp;
    }
    
    public void setMaSp(Integer maSp) {
        this.maSp = maSp;
    }
    public Danhmuc getDanhmuc() {
        return this.danhmuc;
    }
    
    public void setDanhmuc(Danhmuc danhmuc) {
        this.danhmuc = danhmuc;
    }
    public Nhacungcap getNhacungcap() {
        return this.nhacungcap;
    }
    
    public void setNhacungcap(Nhacungcap nhacungcap) {
        this.nhacungcap = nhacungcap;
    }
    public Trangthai getTrangthai() {
        return this.trangthai;
    }
    
    public void setTrangthai(Trangthai trangthai) {
        this.trangthai = trangthai;
    }
    public String getTensanpham() {
        return this.tensanpham;
    }
    
    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }
    public String getMota() {
        return this.mota;
    }
    
    public void setMota(String mota) {
        this.mota = mota;
    }
    public String getAnh() {
        return this.anh;
    }
    
    public void setAnh(String anh) {
        this.anh = anh;
    }
    public Float getGia() {
        return this.gia;
    }
    
    public void setGia(Float gia) {
        this.gia = gia;
    }
    public Float getSale() {
        return this.sale;
    }
    
    public void setSale(Float sale) {
        this.sale = sale;
    }
    public Integer getSoluong() {
        return this.soluong;
    }
    
    public void setSoluong(Integer soluong) {
        this.soluong = soluong;
    }
    public Set getChitiethds() {
        return this.chitiethds;
    }
    
    public void setChitiethds(Set chitiethds) {
        this.chitiethds = chitiethds;
    }




}

