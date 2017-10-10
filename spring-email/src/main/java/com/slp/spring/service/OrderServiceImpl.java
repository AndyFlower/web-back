package com.slp.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slp.spring.model.ProductOrder;

@Service("orderService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	MailService mailService;
	public void sendOrderConfirmation(ProductOrder productOrder) {
		mailService.sendEmail(productOrder);
		
	}

}
