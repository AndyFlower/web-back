package com.slp.repository;

import com.slp.domain.Product;

import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-04 9:55
 * @desc DAO imple  jdbc
 **/
public interface ProductDao {
    public List<Product> getProductList();

    public void saveProduct(Product prod);
}
