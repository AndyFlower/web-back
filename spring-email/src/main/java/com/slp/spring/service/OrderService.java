package com.slp.spring.service;

import com.slp.spring.model.ProductOrder;

public interface OrderService {
  public void sendOrderConfirmation(ProductOrder productOrder);
}
