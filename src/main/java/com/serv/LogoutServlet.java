package com.serv;

import com.utility.DataBase;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.security.sasl.SaslException;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException {
        HttpSession session = req.getSession();
        session.invalidate();
        try {
            res.sendRedirect("login_register.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


}
