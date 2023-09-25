package com.serv;
import com.utility.DataBase;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.sql.*;

import javax.imageio.ImageIO;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/showImage")
public class ShowImage extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        byte[] image = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection conn = null;
        int pId;
         try {

            String query = "select image from products where pId=?";

            conn = DataBase.getConnection();
            pId = Integer.parseInt(request.getParameter("pId"));
            ps = conn.prepareStatement(query);
            ps.setInt(1,pId);
            rs = ps.executeQuery();

            rs.next();
            image = rs.getBytes("image");

         } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DataBase.closeConnection(conn);
            DataBase.closeConnection(rs);
            DataBase.closeConnection(ps);

        }

        if (image == null) {
            File fnew = new File(request.getServletContext().getRealPath("image/noimage.jpg"));
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