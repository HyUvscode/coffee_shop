/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author khuy
 */
public class orderDetail {

    private int orderDetail_id;
    private int quantity;
    private double total_price;
    private int product_id;
    private int order_id;

    public orderDetail() {
    }

    public orderDetail(int orderDetail_id, int quantity, double total_price, int product_id, int order_id) {
        this.orderDetail_id = orderDetail_id;
        this.quantity = quantity;
        this.total_price = total_price;
        this.product_id = product_id;
        this.order_id = order_id;
    }

    public int getOrderDetail_id() {
        return orderDetail_id;
    }

    public void setOrderDetail_id(int orderDetail_id) {
        this.orderDetail_id = orderDetail_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }
    
     
}
