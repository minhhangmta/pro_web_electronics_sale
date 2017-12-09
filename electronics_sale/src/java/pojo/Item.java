/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author tranv
 */
public class Item {
    private Sanpham sanpham=new Sanpham();

    public Sanpham getSanpham() {
        return sanpham;
    }

    public void setSanpham(Sanpham p) {
        this.sanpham = p;
    }
    private int quantity;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public Item(Sanpham sanpham, int quantity){
        super();
        this.sanpham=sanpham;
        this.quantity=quantity;
    }
    public Item(){
        super();
    }
}
