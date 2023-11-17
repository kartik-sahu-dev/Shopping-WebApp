<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.Service.ProductService"%>
<%@ page import="com.beans.ProductBean"%>
<%@ page import="com.beans.CategoryBean"%>
<%@ page import="com.Service.CategoryService"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Durgesh19</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--    <link rel="stylesheet" href="style.css">-->
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="row mt-3 mx-2">
    <%!
    ProductService prd = new ProductService();
    List
    <ProductBean> list = prd.getAllProduct();

        CategoryService cat = new CategoryService();
        List
        <CategoryBean> categories = cat.getAllCategories();
            %>

            <!--        Show Categories-->
            <div class="col-md-2">
                <h1><%= categories.size() %></h1>
                <%
                for(CategoryBean category:categories){

                %>
                <div>

                    <p class="product-info"><%= category.getCategoryName() %></p>
                </div>
                <%
                }
                %>
            </div>

            <!--        Show Products-->
            <div class="col-md-8">
                <h1>Number of Products is:<%= categories.size() %></h1>
                <%
                for (ProductBean product : list) {
                %>
                <div class="col-md-4">

                        <p class="product-info"><%= product.getpName() %></p>


                </div>
                <%
                }
                %>
            </div>
</div>

</body>
</html>