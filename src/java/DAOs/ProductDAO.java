/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import DBConnection.DBConnections;
import Models.products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Data Access Object (DAO) class for managing products in the database.
 * Provides methods for retrieving product-related information.
 *
 * @author khuy
 */
public class ProductDAO {

    private Connection conn = null;
// Constructor initializes the connection using DBConnections class

    public ProductDAO() {
        conn = DBConnections.getConnection();
    }

    /**
     * Retrieves a product by its product ID.
     *
     * @param product_id The ID of the product to retrieve.
     * @return A products object if found, null otherwise.
     */
    public products getProductByID(String product_id) {
        products p = null;
        try {
            String query = "SELECT * FROM products WHERE product_id = ? ";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, product_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                p = new products(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_img"),
                        rs.getDouble("price"), rs.getString("category_id"), rs.getString("product_description"));
            }
        } catch (Exception e) {
        }
        return p;
    }

    /**
     * Retrieves all products from the database.
     *
     * @return ResultSet containing all product details.
     */
    public ResultSet getAllProducts() {
        ResultSet rs = null;
        String query = "SELECT * FROM products";
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery(query);
        } catch (Exception e) {
        }
        return rs;
    }

    /**
     * Retrieves all products within a specific category.
     *
     * @param category_id The ID of the category to filter products.
     * @return ResultSet containing product details in the specified category.
     */
    public ResultSet getAllProductbyCategory(String category_id) {
        ResultSet rs = null;
        //System.out.println(category_id);
        String query = "SELECT * FROM products WHERE category_id=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, category_id);
            rs = st.executeQuery();
        } catch (Exception e) {
        }
        return rs;

    }

    /**
     * Calculates the total price for a given product and quantity.
     *
     * @param product_id The ID of the product.
     * @param quantity The quantity of the product.
     * @return The total price of the product(s).
     */
    public int getTotalPrice(int product_id, int quantity) {
        int total = 0;
        String query = "SELECT * FROM products WHERE product_id=?;";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, product_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                total = (int) (quantity * rs.getDouble("price"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return total;
    }

    /**
     * Retrieves the top products (sorted by price) in a specific category.
     *
     * @param top The number of top products to retrieve.
     * @param category The category to filter products.
     * @return ResultSet containing the top products in the specified category.
     */
    public ResultSet getTopCoffee(int top, String category) {
        ResultSet rs = null;
        try {
            String query = " SELECT TOP " + top + "  * FROM products \n"
                    + " WHERE category_id = ? \n"
                    + " ORDER BY price DESC;";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, category);
            rs = st.executeQuery();
        } catch (Exception e) {
            System.out.println(e);
        }
        return rs;
    }
}
