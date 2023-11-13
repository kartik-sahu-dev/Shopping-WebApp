package com.Service;

import com.beans.CartBean;
import com.utility.DataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartService {
    public void addToCart(){

    }
    public String addProductToCart(String cartId, String prodId, int prodQty){
        return "";
    }

    public String updateProductToCart(String userId, String prodId, int prodQty){
        return "";
    }

    public List<CartBean> getAllCartItems(int cartId){
        List<CartBean> cartProducts = new ArrayList<>();
        Connection connection = DataBase.getConnection();
        PreparedStatement preparedStatement = null;
        String stmt = "SELECT * FROM cartproducts WHERE cartId=?";
        ResultSet resultSet = null;
        try{
            preparedStatement = connection.prepareStatement(stmt);
            preparedStatement.setInt(1,cartId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                CartBean cartBean = new CartBean();
                cartBean.setpId((resultSet.getInt("pId")));
                cartBean.setQuantity(resultSet.getInt("quantity"));
                cartBean.setCartId(resultSet.getInt("cartId"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(connection);
            DataBase.closeConnection(preparedStatement);
            DataBase.closeConnection(resultSet);
        }

        return cartProducts;
    }

    public int getCartCount(int cartId){
        int cartCount=0;
        Connection connection = DataBase.getConnection();
        PreparedStatement preparedStatement = null;
        String stmt = "SELECT SUM(quantity) AS total FROM cartproducts WHERE cartId=?";
        ResultSet resultSet = null;
        try{
            preparedStatement = connection.prepareStatement(stmt);
            preparedStatement.setInt(1,cartId);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();
            cartCount = resultSet.getInt("total");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(connection);
            DataBase.closeConnection(preparedStatement);
            DataBase.closeConnection(resultSet);
        }

        return cartCount;

    }

    public int getCartItemCount(int cartId, int pId){
        int cartItemCount=0;
        Connection connection = DataBase.getConnection();
        PreparedStatement preparedStatement = null;
        String stmt = "SELECT SUM(quantity) AS total FROM cartproducts WHERE cartId=? AND pId = ?";
        ResultSet resultSet = null;
        try{
            preparedStatement = connection.prepareStatement(stmt);
            preparedStatement.setInt(1,cartId);
            preparedStatement.setInt(2,pId);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();
            cartItemCount = resultSet.getInt("total");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(connection);
            DataBase.closeConnection(preparedStatement);
            DataBase.closeConnection(resultSet);
        }

        return cartItemCount;
    }

    public void removeProductFromCart(int cartId, int prodId){
        String stmt = "DELETE FROM cartproducts WHERE pId = ? AND cartId = ?;";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Connection connection = null;

        try {
            connection = DataBase.getConnection();
            preparedStatement = connection.prepareStatement(stmt);
            preparedStatement.setInt(1,prodId);
            preparedStatement.setInt(2,cartId);
            preparedStatement.execute();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DataBase.closeConnection(connection);
            DataBase.closeConnection(preparedStatement);
        }
    }

    public boolean removeAProduct(String userId, String prodId){
        String stmt = "DELETE FROM cartproducts WHERE product_id = ? AND cart_id = ?;";


        return true;
    }
}
