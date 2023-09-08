package com.serv;

import java.io.*;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/productDisplay")
public class ProductDisplay extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Your database connection code here
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/category";
            String username = "root";
            String password = "root";

            Connection con = DriverManager.getConnection(url, username, password);

            // Query to fetch product data, including the image URLs
            String query = "SELECT pId, pName, price, descrip, image FROM electronics";

            // Execute the query and retrieve the result set
            Statement stmt = con.createStatement();
            ResultSet resultSet = stmt.executeQuery(query);

            // Set the result set as a request attribute
            request.setAttribute("productResultSet", resultSet);

            // Forward the request to the JSP for display
            request.getRequestDispatcher("/").forward(request, response);

            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
    }
}

