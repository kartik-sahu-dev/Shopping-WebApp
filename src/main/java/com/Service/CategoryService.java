package com.Service;

import com.beans.CartBean;
import com.beans.CategoryBean;
import com.utility.DataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryService {

    public List<CategoryBean> getAllCategories(){
        List<CategoryBean> categories = new ArrayList<>();
        Connection connection = DataBase.getConnection();
        PreparedStatement ps = null;
        ResultSet  resultSet = null;
        String stmt = "SELECT * FROM category;";
        try {
            ps = connection.prepareStatement(stmt);
            resultSet = ps.executeQuery();
            while(resultSet.next()){
                CategoryBean category = new CategoryBean();
                category.setCategoryName(resultSet.getString("categoryName"));
                category.setCategoryId(Integer.parseInt(resultSet.getString("categoryId")));
                category.setCategoryDescription(resultSet.getString("categoryDesc"));
                categories.add(category);
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
