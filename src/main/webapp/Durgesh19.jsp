<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.Service.ProductService"%>
<%@ page import="com.beans.ProductBean"%>
<%@ page import="com.Service.CategoryService"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Durgesh19</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="row">
    <%
    ProductService prd = new ProductService();
    List
    <ProductBean> list = prd.getAllProduct();

        Category cat = new Category();
        List
        <String> list1 = cat.getAllCategories();
            %>

            <!--        Show Categories-->
            <div class="col-md-2">
                <%
                for(String str:list1){

                %>
                <div>
                    <p class="product-info"><%= str %></p>
                </div>
                <%
                }
                %>
            </div>

            <!--        Show Products-->
            <div class="col-md-8">
                <%
                for (ProductBean product : list) {
                %>
                <div class="col-md-4">
                    <div class="product product-container">
                        <!--                    <img src="showImage?pId=<%= product.getpId() %>" class="img-fluid" alt="<%= product.getpName() %>">-->
                        <p class="product-info"><%= product.getpName() %></p>
                        <p class="product-description"><%= product.getDescrip() %></p>
                        <div class="d-flex justify-content-between product-price">
                            <div class="product-info leftAlign">Price:</div>
                            <div class="product-info rightAlign"><%= product.getPrice() %></div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div class="product-info leftAlign">Stock:</div>
                            <div class="product-info rightAlign"><%= product.getQuantity() %></div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div class="product-info leftAlign">Likes:</div>
                            <div class="product-info rightAlign"><%= product.getLikes() %></div>
                        </div>
                    </div>
                </div>
                <%
                }
                %>
            </div>
</div>

</body>
</html>