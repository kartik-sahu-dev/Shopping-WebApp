package com;

import com.Service.ProductService;
import com.beans.ProductBean;

import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        ProductService ps = new ProductService();
        List<ProductBean> products = ps.getAllProductByCategory("smartphone");
        for(ProductBean p : products) {

            System.out.println(p.getCategory());
            System.out.println(p.getpId());
            System.out.println(p.getPrice());
        }
    }
}
