package com.serv;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.sql.*;

import javax.imageio.ImageIO;


import com.utility.DataBase;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/showImage")
public class ShowImage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ShowImage() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        byte[] image = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            String query = "select * from electronics";
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/category";
            String username = "root";
            String password = "root";

            Connection conn = DriverManager.getConnection(url, username, password);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            rs.next();
            rs.getString("pId");
            image = rs.getBytes("image");
            conn.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (image == null) {
            File fnew = new File(request.getServletContext().getRealPath("images/noimage.jpg"));
            BufferedImage originalImage = ImageIO.read(fnew);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(originalImage, "jpg", baos);
            image = baos.toByteArray();
        }

        ServletOutputStream sos = null;

        sos = response.getOutputStream();

        sos.write(image);

    }
}