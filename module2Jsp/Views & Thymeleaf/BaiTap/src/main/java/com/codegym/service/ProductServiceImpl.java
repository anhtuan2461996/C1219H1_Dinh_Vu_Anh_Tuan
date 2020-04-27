package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static List<Product> products;
    static {
        products = new ArrayList<>();
        products.add(new Product(1,"ca phe",20000,"che bien va uong ", "DaNang"));
        products.add(new Product(2,"sua dac",300000,"che bien va uong", "DaNang"));
        products.add(new Product(3,"cha ca",250000,"che bien va an", "DaNang"));
        products.add(new Product(4,"bun",15000,"che bien va an","DaNang"));
        products.add( new Product(5,"com chien",20000,"che bien va an","DaNang"));
    }
    @Override
    public List<Product> findAll() {
        return null;
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void remove(int id) {

    }
}
