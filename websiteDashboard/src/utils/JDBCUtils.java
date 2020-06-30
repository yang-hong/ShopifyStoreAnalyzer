package utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Properties;

public class JDBCUtils {
	
    private static String jdbcURL = "jdbc:mysql://localhost:3306/WebsiteAnalyzer?serverTimezone=UTC";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "";

    public static Connection getConnection() {
//    	Connection connection = null;
//    	
//    	Properties props = new Properties();
//    	
//    	try (InputStream input = new FileInputStream("dbConn.properties")) {
//    		props.load(input);
//    	} catch (IOException ex) {
//            ex.printStackTrace();
//        }
//    	
//		String driver = props.getProperty("driver.name");
//		String url = props.getProperty("server.name");
//	    String username = props.getProperty("user.name");
//	    String password = props.getProperty("user.password");
//    	
//        try {
//            Class.forName(driver);
//            connection = DriverManager.getConnection(url, username, password);
//        } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        return connection;
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public static void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public static Date getSQLDate(LocalDate date) {
        return java.sql.Date.valueOf(date);
    }

    public static LocalDate getUtilDate(Date sqlDate) {
        return sqlDate.toLocalDate();
    }
}