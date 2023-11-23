package com;

import com.Service.CartService;

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
        cart.addToCart(6,12,4);
        cart.addToCart(6,14,2);
        cart.addToCart(6,13,3);
        cart.addToCart(6,15,5);
//        List<CartBean> cartItems = cart.getAllCartItems(1);
//        for(CartBean bean : cartItems){
//            System.out.println(bean.getpName());
//            System.out.println(bean.getQuantity());

    }
}
