package com.Service;

import com.utility.DataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Category {

    public List<String> getAllCategories(){
        List<String> categories = new ArrayList<>();
        Connection connection = DataBase.getConnection();
        PreparedStatement ps = null;
        ResultSet  resultSet = null;
        String stmt = "SELECT categoryName FROM category;";
        try {
            ps = connection.prepareStatement(stmt);
            resultSet = ps.executeQuery();
            while(resultSet.next()){
                categories.add(resultSet.getString("categoryName"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBase.closeConnection(connection);
            DataBase.closeConnection(ps);
            DataBase.closeConnection(resultSet);
        }


        return categories;
    }
}
