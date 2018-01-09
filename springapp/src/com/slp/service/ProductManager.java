package com.slp.service;

import com.slp.domain.Product;

import java.io.Serializable;
import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-03 17:18
 * @desc 服务层
 **/
public interface ProductManager  extends Serializable {
    /**
     * 涨价
     * @param percentage
     */
    public void increasePrice(int percentage);

    /**
     * 获取商品列表
     * @return
     */
    public List<Product> getProducts();
}
