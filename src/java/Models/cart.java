/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.ArrayList;

/**
 *
 * @author khuy
 */
public class cart {
    private String cart_id;
    private String username;
    private ArrayList<cartItems> items;
    private double total_price;

    public cart() {
    }

    public cart(String cart_id, String username, ArrayList<cartItems> items, double total_price) {
        this.cart_id = cart_id;
        this.username = username;
        this.items = items;
        this.total_price = total_price;
    }

    public String getCart_id() {
        return cart_id;
    }

    public void setCart_id(String cart_id) {
        this.cart_id = cart_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public ArrayList<cartItems> getItems() {
        return items;
    }

    public void setItems(ArrayList<cartItems> items) {
        this.items = items;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    
}
