package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBase {
    private static Connection conn;

    public static Connection getConnection(){

        try {
            // Your database connection code here
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/category";
            String username = "root";
            String password = "root";

            Connection con = DriverManager.getConnection(url, username, password);
        }catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }
        return conn;
    }
}
