package DAOs;

import DBConnection.DBConnections;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Data Access Object (DAO) class for managing categories in the database.
 * Provides methods for retrieving category-related information.
 *
 * @author khuy
 */
public class CategoryDAO {

    private Connection conn = null;

    // Constructor initializes the connection using DBConnections class
    public CategoryDAO() {
        conn = DBConnections.getConnection();
    }

    /**
     * Retrieves all categories from the database.
     *
     * @return ResultSet containing all category details.
     */
    public ResultSet getAllCategories() {
        ResultSet rs = null;
        String query = "SELECT * FROM categories";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            rs = st.executeQuery();
        } catch (Exception e) {
        }
        return rs;
    }

    /**
     * Gets the number of categories in the database.
     *
     * @return Number of categories.
     * @throws SQLException if a database access error occurs.
     */
    public int getNumberOfCategories() throws SQLException {
        ResultSet rs = getAllCategories();
        int index = 0;
        while (rs.next()) {
            index++;
        }
        return index;
    }

    /**
     * Gets the number of products in a specific category.
     *
     * @param category_id ID of the category.
     * @return Number of products in the specified category.
     */
    public int getNumberOfProductByCategory(String category_id) {
        ResultSet rs = null;
        int index = 0;
        String query = "SELECT COUNT(*) AS TotalCount FROM products WHERE category_id = ?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, category_id);
            rs = st.executeQuery();
            if (rs.next()) {
                index = rs.getInt("TotalCount");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return index;
    }
}
