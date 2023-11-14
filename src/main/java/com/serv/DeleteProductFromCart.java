package com.serv;

import com.Service.CartService;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/removeProduct")
public class DeleteProductFromCart extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        int cartId = Integer.parseInt(request.getParameter("cartId"));
        int pId = Integer.parseInt(request.getParameter("pId"));
        CartService cartService = new CartService();
        cartService.removeProductFromCart(cartId, pId);
        try {
            response.sendRedirect("userCart.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
