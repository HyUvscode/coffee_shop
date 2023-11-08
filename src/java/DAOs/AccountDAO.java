/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import DBConnection.DBConnections;
import Models.accounts;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Dao Thien Hieu Loi - CE171675
 */
public class AccountDAO {

    private Connection conn = null;

    public AccountDAO() {
        conn = DBConnections.getConnection();
    }

    public accounts checkLogin(String username, String password) {
        accounts acc = null;
        String query = "SELECT * FROM accounts WHERE username=? AND password=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            st.setString(2, password);
            System.out.println(username + password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                acc = new accounts(rs.getString("username"), rs.getString("password"), rs.getInt("account_id"),
                        rs.getString("fullname"), rs.getInt("age"), rs.getString("email"), rs.getString("address"), rs.getString("phone"), rs.getString("role_id"));
            }
        } catch (Exception e) {
        }
        return acc;
    }

    public accounts checkLogin2(String username, String password) {
        accounts acc = null;
        String query = "SELECT * FROM accounts WHERE username=? AND password=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            st.setString(2, getMd5(password));
            System.out.println(username + password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                acc = new accounts(rs.getString("username"), rs.getString("password"), rs.getInt("account_id"),
                        rs.getString("fullname"), rs.getInt("age"), rs.getString("email"), rs.getString("address"), rs.getString("phone"), rs.getString("role_id"));
            }
        } catch (Exception e) {
        }
        return acc;
    }
    
    
    public accounts Check_Realaccount(String username) {
        accounts acc = null;
        String query = "SELECT * FROM accounts WHERE email=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                acc = new accounts(rs.getString("username"), rs.getString("password"), rs.getInt("account_id"),
                        rs.getString("fullname"), rs.getInt("age"), rs.getString("email"), rs.getString("address"), rs.getString("phone"), rs.getString("role_id"));
            }
        } catch (Exception e) {
        }
        return acc;
    }

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

    public ResultSet getAllAccounts() {
        ResultSet rs = null;
        String query = "SELECT* FROM accounts";
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery(query);
        } catch (Exception e) {
        }
        return rs;
    }

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

    public int insertKey(String username, String email, String key_forgot) {
        int index = 0;
        String query = "INSERT INTO key_forgot ([username], [email],[key_forgot]) \n"
                + "VALUES (?,?,?)";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            st.setString(2, email);
            st.setString(3, key_forgot);
            index = st.executeUpdate();
        } catch (Exception e) {
        }
        return index;
    }

    public String Check_Keyforgot(String key) {
        String query = "SELECT * FROM key_forgot WHERE key_forgot=?";
        String username = null;
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, key);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                username = rs.getString("username");
            }
        } catch (Exception e) {
        }
        return username;
    }


    public void ChangePass(String username, String Passnew) {
        String query = "UPDATE accounts SET password=? WHERE username=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, getMd5(Passnew));
            st.setString(2, username);
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int deleteKey(String username) {
        int index = 0;
        String query = "DELETE  FROM key_forgot WHERE username=?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            index = st.executeUpdate();
        } catch (Exception e) {
        }
        return index;
    }

    public String getMd5(String input) {
        try {

            // Static getInstance method is called with hashing MD5
            MessageDigest md = MessageDigest.getInstance("MD5");

            // digest() method is called to calculate message digest
            // of an input digest() return array of byte
            byte[] messageDigest = md.digest(input.getBytes());

            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);

            // Convert message digest into hex value
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
