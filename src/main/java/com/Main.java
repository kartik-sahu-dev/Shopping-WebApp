package com;

import com.Service.CartService;
import com.Service.Category;
import com.Service.ProductService;
import com.beans.ProductBean;

import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
//        CartService cartService = new CartService();
//        System.out.println(cartService.getCartItemCount(1,2));
//        cartService.removeProductFromCart(1,2);

        Category category = new Category();
        List<String> cat = category.getAllCategories();
        for(String s : cat){
            System.out.println(s);
        }
    }
}
