package com.Service;

import com.beans.ProductBean;
import com.utility.DataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductService {

    public ProductBean getAProduct(int pId){
        ProductBean product = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = DataBase.getConnection();

        try {

            ps = con.prepareStatement("select p.*,c.categoryName\n" +
                    "from products p\n" +
                    "join category c\n" +
                    "on p.categoryId = c.categoryId\n" +
                    "where p.pId=?;");
            ps.setInt(1,pId);
            rs = ps.executeQuery();
            if(rs.next()){
                product = new ProductBean();
                product.setpId(rs.getInt(1));
                product.setCategory(rs.getString(2));
                product.setpName(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                product.setDescrip(rs.getString(5));
                product.setQuantity(rs.getInt(6));
                product.setLikes(rs.getInt(7));
                product.setImage(rs.getBytes(8));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(con);
            DataBase.closeConnection(ps);
            DataBase.closeConnection(rs);

        }
        return product;
    }
    public List<ProductBean> getAllProduct(){
        List<ProductBean> products = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = DataBase.getConnection();

        try {

            ps = con.prepareStatement("select p.*,c.categoryName\n" +
                    "from products p\n" +
                    "join category c\n" +
                    "on p.categoryId = c.categoryId;");

            rs = ps.executeQuery();
            while(rs.next()){
                ProductBean product = new ProductBean();
                product.setpId(rs.getInt(1));
                product.setCategory(rs.getString(2));
                product.setpName(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                product.setDescrip(rs.getString(5));
                product.setQuantity(rs.getInt(6));
                product.setLikes(rs.getInt(7));
                product.setImage(rs.getBytes(8));

                products.add(product);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(con);
            DataBase.closeConnection(ps);
            DataBase.closeConnection(rs);

        }
        return products;
    }
    public List<ProductBean> getAllProductByCategory(int categoryId){
        List<ProductBean> products = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = DataBase.getConnection();

        try {

            ps = con.prepareStatement("select p.*,c.categoryName\n" +
                    "from products p\n" +
                    "join category c\n" +
                    "on p.categoryId = ?;");
            ps.setInt(  1,categoryId);
            rs = ps.executeQuery();
            while(rs.next()){
                ProductBean product = new ProductBean();
                product.setpId(rs.getInt(1));
                product.setCategory(rs.getString(2));
                product.setpName(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                product.setDescrip(rs.getString(5));
                product.setQuantity(rs.getInt(6));
                product.setLikes(rs.getInt(7));
                product.setImage(rs.getBytes(8));

                products.add(product);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(con);
            DataBase.closeConnection(ps);
            DataBase.closeConnection(rs);

        }
        return products;
    }
}
