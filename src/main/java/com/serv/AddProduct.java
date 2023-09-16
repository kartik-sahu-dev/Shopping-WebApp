package com.serv;

import com.beans.ProductBean;
import com.utility.DataBase;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/addProduct")
@MultipartConfig(maxFileSize = 16177215)
public class AddProduct extends HttpServlet {
    Connection con = null;

    protected void doPost(HttpServletRequest req, HttpServletResponse res){
        String pName,category,descrip;
        Double price;
        int stock,rowInserted;
        InputStream inputStream = null;
        PreparedStatement ps = null;


        pName = req.getParameter("pName");
        category = req.getParameter("category");
        price = Double.parseDouble(req.getParameter("price"));
        stock = Integer.parseInt(req.getParameter("stock"));
        descrip = req.getParameter("descrip");
        try {
            Part file = null;
            //input image
            try {
                file = req.getPart("image");
                if(file != null){
                    inputStream = file.getInputStream();
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

            con = DataBase.getConnection();
            String stmt = "insert into products (category,pName,price,descrip,stock,image) values (?,?,?,?,?,?)";

            try{
                ps = con.prepareStatement(stmt);
                ps.setString(1, category);
                ps.setString(2, pName);
                ps.setDouble(3, price);
                ps.setString(4, descrip);
                ps.setInt(5, stock);
                ps.setBlob(6, inputStream);
                rowInserted = ps.executeUpdate();
                if(rowInserted>0){
                    System.out.println("row inserted successfully");
                }else{
                    System.out.println("Failed to execute update");
                }
            }catch (SQLException e){
                e.printStackTrace();
            }


        } catch (ServletException e) {
            e.printStackTrace();
        } finally {
            DataBase.closeConnection(con);
            DataBase.closeConnection(ps);

        }
        RequestDispatcher rd = req.getRequestDispatcher("adminHome.jsp");
        try {
            rd.forward(req,res);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}