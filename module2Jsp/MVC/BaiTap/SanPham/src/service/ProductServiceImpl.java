package service;

import controller.ProductServlet;
import model.Products;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl extends ProductServlet implements ProductService{
    private static Map<Integer, Products> products;
    static {
        products= new HashMap<>();
        products.put(1,new Products(1,"Bot Giat",2000,"Dung de giat do","OMO"));
        products.put(2,new Products(2,"Nuoc Loc",5000,"Dung de uong","AQA"));
        products.put(3,new Products(3,"Muoic",5000,"Dung de nem","Man"));
        products.put(4,new Products(4,"Gao",10000,"Dung de an","VN"));
        products.put(5,new Products(5,"Nuoc mam",3000,"Dung de nem","RANG DONG"));
    }
    @Override
    public List<Products> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Products product) {
        products.put(product.getId(),product);
    }

    @Override
    public Products findByName(String name) {
        return products.get(name);
    }

    @Override
    public void uppdate(int id, Products product) {
        products.put(id,product);
    }

    @Override
    public void remote(int id) {
        products.remove(id);
    }
}
