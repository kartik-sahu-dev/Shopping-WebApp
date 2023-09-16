package com.serv;

import com.utility.DataBase;
import jakarta.servlet.*;

import java.io.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.sql.*;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String umail = request.getParameter("username");
        String pword = request.getParameter("pword");

        Connection con = null;

        RequestDispatcher dispatcher = null;
        PreparedStatement pstmt = null;
        ResultSet set = null;

        System.out.println("Hello Kartik, Speaking from Servlet");

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        out.println("<html><body>");
        out.println("<h1>Kartik Jaiswal</h1>");
        out.println("</html></body>");


        try {
           con = DataBase.getConnection();

            String q = "select * from user where mail = ? and pWord = ?";

             pstmt = con.prepareStatement(q);

            pstmt.setString(1, umail);
            pstmt.setString(2, pword);

             set = pstmt.executeQuery();

            if(set.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("name", set.getString("fName"));
                dispatcher = request.getRequestDispatcher("index.jsp");
            }
            else
            {
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login_register.jsp");
            }

            dispatcher.forward(request,response);
        }catch(Exception e)
        {
            e.printStackTrace();
        }finally{
            DataBase.closeConnection(con);
            DataBase.closeConnection(pstmt);
            DataBase.closeConnection(set);
        }
    }

}

