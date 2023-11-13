package com.serv;

import com.utility.DataBase;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Logger;

@WebServlet("/addCategory")
public class AddCategoryServlet extends HttpServlet {
    Connection con = null;
    private static final Logger logger = Logger.getLogger(AddCategoryServlet.class.getName());


    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        logger.info("Entering doPost method");

        System.out.println("heelo");
        String categoryName;
        String categoryDesc;
        int rowInserted;
        PreparedStatement ps = null;

        categoryName = req.getParameter("categoryName");
        categoryDesc = req.getParameter("categoryDesc");
        System.out.println(categoryName);


        con = DataBase.getConnection();
        String stmt = "insert into category (categoryName,categoryDesc) values (?,?);";

        try{
            ps = con.prepareStatement(stmt);
            ps.setString(1, categoryName);
            ps.setString(2, categoryDesc);
            rowInserted = ps.executeUpdate();
            if(rowInserted>0){
                System.out.println("row inserted successfully");
            }else{
                System.out.println("Failed to execute update");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DataBase.closeConnection(con);
            DataBase.closeConnection(ps);
        }
//        RequestDispatcher rd = req.getRequestDispatcher("adminHome.jsp");
//        try {
//            rd.forward(req,res);
//        } catch (ServletException e) {
//            throw new RuntimeException(e);
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
        res.sendRedirect("adminHome.jsp");
        logger.info("Exiting doPost method");

    }
}