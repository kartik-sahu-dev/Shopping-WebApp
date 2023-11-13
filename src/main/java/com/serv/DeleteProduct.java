package com.serv;

import com.utility.DataBase;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/deleteProduct")
public class DeleteProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int pId =  Integer.parseInt(request.getParameter("pId"));
        System.out.println("pId"+pId);
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String stmt = "DELETE from products where pId=?";
        try {
            connection = DataBase.getConnection();
            preparedStatement = connection.prepareStatement(stmt);
            preparedStatement.setInt(1,pId);
            int isDeleted = preparedStatement.executeUpdate();
            if(isDeleted > 0){
                System.out.println("Product Deleted!!");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(connection);
            DataBase.closeConnection(preparedStatement);
        }
        response.sendRedirect("adminStock.jsp");
    }
}
