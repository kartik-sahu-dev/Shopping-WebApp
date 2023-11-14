package com.serv;

import com.Service.CartService;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/addProductToCart")
public class AddToCart extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        int pId = Integer.parseInt(request.getParameter("pId"));
        int cartId = Integer.parseInt(request.getParameter("cartId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        CartService cartService = new CartService();
        cartService.addToCart(cartId, pId, quantity);
        try {
            response.sendRedirect("products.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
