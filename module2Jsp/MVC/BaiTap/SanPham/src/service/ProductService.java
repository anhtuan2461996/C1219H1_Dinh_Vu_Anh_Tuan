package service;

import model.Products;

import java.util.List;

public interface ProductService {
    //Hiển thị danh sách sản phẩm
    List<Products> findAll();
    //Cập nhật thông tin sản phẩm
    void save(Products product);
    //Tìm kiếm sản phẩm theo tên
    Products findByName(String name);
    //Cập nhật thông tin sản phẩm
    void uppdate(int id,Products products);
    //Xoá một sản phẩm
    void remote(int id);
}
