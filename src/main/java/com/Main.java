package com;

import com.Service.CartService;
import com.Service.Category;
import com.Service.ProductService;
import com.beans.CartBean;
import com.beans.ProductBean;

import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
//        CartService cartService = new CartService();
//        System.out.println(cartService.getCartItemCount(1,2));
//        cartService.removeProductFromCart(1,2);

//        Category category = new Category();
//        List<String> cat = category.getAllCategories();
//        for(String s : cat){
//            System.out.println(s);
//        }


        CartService cart = new CartService();
        cart.addToCart(4,12,4);
        cart.addToCart(4,14,4);
        cart.addToCart(4,13,4);
        cart.addToCart(4,15,4);
//        List<CartBean> cartItems = cart.getAllCartItems(1);
//        for(CartBean bean : cartItems){
//            System.out.println(bean.getpName());
//            System.out.println(bean.getQuantity());

    }
}
