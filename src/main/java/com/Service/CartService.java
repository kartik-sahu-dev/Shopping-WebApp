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
    public void addToCart(int cartId, int productId, int quantity){
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        String stmt = "INSERT INTO cartProducts (cartId, pId, quantity) VALUES (?,?,?)";
        conn = DataBase.getConnection();
        try {
            preparedStatement = conn.prepareStatement(stmt);
            preparedStatement.setInt(1,cartId);
            preparedStatement.setInt(2,productId);
            preparedStatement.setInt(3,quantity);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DataBase.closeConnection(conn);
            DataBase.closeConnection(preparedStatement);
        }

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
        String stmt = "SELECT cp.pId, cp.cartId, cp.quantity, p.price, p.pName, p.image FROM cartProducts cp JOIN products p ON cp.pId = p.pId WHERE cp.cartId = ?;";
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
                cartBean.setPrice(resultSet.getDouble("price"));
                cartBean.setpName(resultSet.getString("pName"));
                cartBean.setImage(resultSet.getBytes("image"));
                cartProducts.add(cartBean);
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
