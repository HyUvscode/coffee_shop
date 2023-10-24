/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import DBConnection.DBConnections;
import Models.orders;
import Models.orderDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Data Access Object (DAO) class for managing orders and order details in the
 * database. Provides methods for retrieving, inserting, and updating
 * order-related information.
 *
 * @author khuy
 *
 */
public class OrderDAO {

    private Connection conn = null;

    // Constructor initializes the connection using DBConnections class
    public OrderDAO() {
        conn = DBConnections.getConnection();
    }

    /**
     * Retrieves the maximum order ID from the orders table.
     *
     * @return Maximum order ID incremented by 1.
     */
    public int getMaxOfOrderID() {
        int index = 0;
        String query = "SELECT MAX(order_id) AS MAX FROM orders;";
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            if (rs.next()) {
                index = rs.getInt("MAX") + 1;
            }
        } catch (Exception e) {
            // Handle exceptions appropriately (logging, etc.)
            System.out.println(e);
        }
        return index;
    }

    /**
     * Inserts a new order into the orders table.
     *
     * @param order Order object containing order details.
     * @return Number of rows affected (1 if successful, 0 otherwise).
     */
    public int insertOrder(orders order) {
        int count = 0;
        String query = "INSERT INTO orders([Date], staff_id, customer_id) VALUES (?, ?, ?)";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setDate(1, order.getDate());
            st.setString(2, order.getStaff_id());
            st.setString(3, order.getCustomer_id());
            count = st.executeUpdate();
        } catch (Exception e) {
            // Handle exceptions appropriately (logging, etc.)
            System.out.println(e);
        }
        return count;
    }

    /**
     * Inserts order details into the order_details table.
     *
     * @param orderdetails OrderDetail object containing order details.
     * @return Number of rows affected (1 if successful, 0 otherwise).
     */
    public int insertOrderDetails(orderDetail orderdetails) {
        int count = 0;
        String query = "INSERT INTO order_details(order_id, product_id, quantity, total_price) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, orderdetails.getOrder_id());
            st.setInt(2, orderdetails.getProduct_id());
            st.setInt(3, orderdetails.getQuantity());
            st.setDouble(4, orderdetails.getTotal_price());
            count = st.executeUpdate();
        } catch (Exception e) {
            // Handle exceptions appropriately (logging, etc.)
            System.out.println(e);
        }
        return count;
    }

    /**
     * Retrieves orders by customer username, including order details and
     * product information.
     *
     * @param username Customer's username.
     * @return ResultSet containing order details for the specified customer.
     */
    public ResultSet getOrderbyID(String username) {
        ResultSet rs = null;
        try {
            String query = "SELECT * FROM order_details "
                    + "LEFT OUTER JOIN products ON order_details.product_id = products.product_id "
                    + "RIGHT OUTER JOIN orders ON order_details.order_id = orders.order_id "
                    + "LEFT OUTER JOIN accounts ON orders.customer_id = accounts.username "
                    + "WHERE username = ? ORDER BY orders.Date DESC;";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            rs = st.executeQuery();
        } catch (Exception e) {
            // Handle exceptions appropriately (logging, etc.)
            System.out.println(e);
        }
        return rs;
    }
}
