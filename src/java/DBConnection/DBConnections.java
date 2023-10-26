package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * This class provides methods to establish and close a connection to the
 * database. It uses the SQLServer JDBC driver to connect to the database.
 *
 * Note: Make sure to handle exceptions and close connections properly in a
 * real-world application. This example demonstrates the basic connection setup.
 *
 * @author khuy
 */
public class DBConnections {

    // Static variable to store the database connection
    private static Connection conn = null;

//    public static Connection getConnection() {
//        try {
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            try {
//                conn = DriverManager.getConnection("jdbc:sqlserver://"
//                        + "localhost:1433;"
//                        + "databaseName=DBCoffeeShop;"
//                        // Enter your SSMS login username
//                        + "user=sa;"
//                        // Enter your SSMS login password
//                        + "password=111111;"
//                        + "encrypt=true;"
//                        + "trustServerCertificate= true;");
//            } catch (SQLException ex) {
//                Logger.getLogger(DBConnections.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(DBConnections.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return conn;
//    }

    /**
     * Establishes a database connection if it is not already established.
     *
     * @return Connection object representing the database connection.
     */
    public static java.sql.Connection getConnection() {
        // Check if the connection is null (not established)
        if (conn == null) {
            try {
                // Load the SQLServer JDBC driver
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                // Database connection URL with credentials and other parameters
                String url = "jdbc:sqlserver://khuy:1433;databaseName=DBCoffeeShop;user=sa;password=111111;encrypt=true;trustServerCertificate=true;";

                try {
                    // Establish the database connection
                    conn = DriverManager.getConnection(url);
                } catch (SQLException ex) {
                    // Handle SQLException, log the error
                    Logger.getLogger(DBConnections.class.getName()).log(Level.SEVERE, null, ex);
                }
            } catch (ClassNotFoundException ex) {
                // Handle ClassNotFoundException, log the error
                Logger.getLogger(DBConnections.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        // Return the established connection
        return conn;
    }
    /**
     * Closes the database connection if it is open.
     */
    public static void closeConnection() {
        try {
            // Check if the connection is not closed
            if (conn != null && !conn.isClosed()) {
                // Close the connection
                conn.close();
            }
        } catch (SQLException ex) {
            // Handle SQLException, log the error
            Logger.getLogger(DBConnections.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
