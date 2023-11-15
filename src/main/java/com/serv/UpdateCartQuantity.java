package com.serv;


import com.Service.CartService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/updateCartQuantity")
public class UpdateCartQuantity extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int currentQuantity = 0;
        int cartId = Integer.parseInt((String)req.getParameter("cartId"));
        int pId = Integer.parseInt((String)req.getParameter("pId"));
        String action = (String)req.getParameter("action");

        CartService cartService = new CartService();
        currentQuantity = cartService.getCartItemCount(cartId, pId);

        if(action.equals("plus")) {
            cartService.updateProductToCart(cartId, pId, currentQuantity + 1);
        }else if(action.equals("minus")){
            cartService.updateProductToCart(cartId, pId, currentQuantity - 1);
        }



    }
}
