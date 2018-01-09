package com.slp.repository;/**
 * Created by sangliping on 2018/1/4.
 */

import com.slp.domain.Product;

import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-04 10:41
 * @desc InMemoryProductDao
 **/
public class InMemoryProductDao implements ProductDao{
    private List<Product> productList;

    public InMemoryProductDao(List<Product> productList) {
        this.productList = productList;
    }

    @Override
    public List<Product> getProductList() {
        return productList;
    }

    @Override
    public void saveProduct(Product prod) {
    }
}
