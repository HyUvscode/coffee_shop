package DAOs;

import DBConnection.DBConnections;
import Models.accounts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Data Access Object (DAO) class for managing accounts in the database.
 * Provides methods for various account-related operations such as login,
 * retrieval, update, and insertion.
 *
 * @author khuy
 */
public class AccountDAO {

    private Connection conn = null;

    // Constructor initializes the connection using DBConnections class
    public AccountDAO() {
        conn = DBConnections.getConnection();
    }

    /**
     * Validates user login credentials.
     *
     * @param username User's username.
     * @param password User's password.
     * @return An accounts object if the login is successful, null otherwise.
     */
    public accounts checkLogin(String username, String password) {
        accounts acc = null;
        String query = "SELECT * FROM accounts WHERE username=? AND password=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            st.setString(2, password);
//            System.out.println("khuy da o day: \n");
            System.out.println("username: " + username + "\npassword: " + password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                acc = new accounts(rs.getString("username"), rs.getString("password"),
                        rs.getInt("account_id"), rs.getString("fullname"), rs.getInt("age"),
                        rs.getString("email"), rs.getString("address"), rs.getString("phone"),
                        rs.getString("role_id"));
            }

        } catch (Exception e) {
        }
        return acc;
    }

    /**
     * Retrieves an account by its account ID from the database.
     *
     * @param account_id The ID of the account to retrieve.
     * @return An accounts object if found, null otherwise.
     */
    public accounts getAccount(String account_id) {
        accounts acc = null;
        String query = "SELECT * FROM accounts WHERE account_id=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, account_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                acc = new accounts(rs.getString("username"), rs.getString("password"), rs.getInt("account_id"),
                        rs.getString("fullname"), rs.getInt("age"), rs.getString("email"), rs.getString("address"), rs.getString("phone"), rs.getString("role_id"));
            }
        } catch (Exception e) {
        }
        return acc;
    }
    
    public accounts getAccountByRoleID(String role_id){
        accounts acc = null;
        String query = "SELECT * FROM accounts WHERE role_id=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, role_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                acc = new accounts(rs.getString("username"), rs.getString("password"), rs.getInt("account_id"),
                        rs.getString("fullname"), rs.getInt("age"), rs.getString("email"), rs.getString("address"), rs.getString("phone"), rs.getString("role_id"));
            }
        } catch (Exception e) {
        }
        return acc;
    }

    /**
     * Retrieves all orders associated with a specific staff member.
     *
     * @param username Staff member's username.
     * @return ResultSet containing order details.
     */
    public ResultSet getAllOrdersByStaff(String username) {
        ResultSet rs = null;
        String query = "select * from order_details \n"
                + "left outer join products on order_details.product_id=products.product_id\n"
                + "right outer join orders on order_details.order_id=orders.order_id\n"
                + "left outer join accounts on orders.customer_id=accounts.username\n"
                + "where orders.staff_id=?;";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            rs = st.executeQuery();
        } catch (Exception e) {

        }
        return rs;
    }

    /**
     * Retrieves all accounts from the database.
     *
     * @return ResultSet containing all account details.
     */
    public ResultSet getAllAccounts() {
        ResultSet rs = null;
        String query = "SELECT * FROM accounts";
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery(query);
        } catch (Exception e) {
        }
        return rs;
    }

    /**
     * Updates account information in the database.
     *
     * @param acc Updated accounts object.
     */
    public void UpdateAccount(accounts acc) {
        String query = "UPDATE accounts "
                + "SET fullname=?, age=?, email=?, address=?, phone=? "
                + "WHERE username=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, acc.getFullname());
            st.setInt(2, acc.getAge());
            st.setString(3, acc.getEmail());
            st.setString(4, acc.getAddress());
            st.setString(5, acc.getPhone());
            st.setString(6, acc.getUsername());
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Retrieves an account based on the phone number.
     *
     * @param phone Phone number associated with the account.
     * @return An accounts object if found, null otherwise.
     */
    public accounts getCusByPhone(String phone) {
        accounts acc = null;
        String query = "SELECT * FROM accounts WHERE phone=?;";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, phone);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                acc = new accounts(rs.getString("username"), rs.getString("password"), rs.getInt("account_id"),
                        rs.getString("fullname"), rs.getInt("age"), rs.getString("email"), rs.getString("address"), rs.getString("phone"), rs.getString("role_id"));
            }
        } catch (Exception e) {
        }
        return acc;
    }

    /**
     * Inserts a new account into the database.
     *
     * @param acc accounts object to be inserted.
     * @return Index indicating the success of the insertion operation.
     */
    public int insertAccount(accounts acc) {
        int index = 0;
        String query = "INSERT INTO accounts ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) \n"
                + "VALUES (?,?,?,?,?, ?,?,?)";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, acc.getUsername());
            st.setString(2, acc.getPassword());
            st.setString(3, acc.getFullname());
            st.setInt(4, acc.getAge());
            st.setString(5, acc.getEmail());
            st.setString(6, acc.getAddress());
            st.setString(7, acc.getPhone());
            st.setString(8, acc.getRole_id());
            index = st.executeUpdate();
        } catch (Exception e) {
        }
        return index;
    }

}
