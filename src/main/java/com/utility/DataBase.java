package com.utility;

import java.sql.*;

public class DataBase {
    private static Connection con;

    public static Connection getConnection(){


        try {
            // Your database connection code here
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/projectdb";
            String username = "root";
            String password = "root";

            con = DriverManager.getConnection(url, username, password);
        }catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }
        return con;
    }
    public static void closeConnection(Connection conn){
        try {
            if (conn != null || conn.isClosed()) {
                conn.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void closeConnection(PreparedStatement ps){
        try {
            if (ps != null || ps.isClosed()) {
                ps.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void closeConnection(ResultSet rs){
        try {
            if (rs != null || rs.isClosed()) {
                rs.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
