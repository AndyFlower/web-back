package com.slp.service;

import com.slp.domain.Product;
import com.slp.repository.ProductDao;

import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-03 17:19
 * @desc 服务实现
 **/
public class SimpleProductManager  implements ProductManager{
    //private List<Product> products;
    private ProductDao productDao;
    @Override
    public void increasePrice(int percentage) {
        List<Product> products = productDao.getProductList();
        if (products != null) {
            for (Product product : products) {
                double newPrice = product.getPrice().doubleValue() *
                        (100 + percentage)/100;
                product.setPrice(newPrice);
                productDao.saveProduct(product);
            }
        }
    }

    @Override
    public List<Product> getProducts() {
        //throw new UnsupportedOperationException();
        //return products;
        return productDao.getProductList();
    }

    //public void setProducts(List<Product> products) {
        //this.products = products;
    //}
    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
    }

}
