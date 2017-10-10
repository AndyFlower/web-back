package com.slp.spring.configuration;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.slp.spring.model.CustomerInfo;
import com.slp.spring.model.ProductOrder;
import com.slp.spring.service.OrderService;

public class SampleEmailApplication {
	 public static void main(String[] args) {
	        AbstractApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
	 
	        OrderService orderService = (OrderService) context.getBean("orderService");
	        orderService.sendOrderConfirmation(getDummyOrder());
	        ((AbstractApplicationContext) context).close();
	    }
	     
	    public static ProductOrder getDummyOrder(){
	        ProductOrder order = new ProductOrder();
	        order.setOrderId("1111");
	        order.setProductName("Thinkpad T510");
	        order.setStatus("confirmed");
	         
	        CustomerInfo customerInfo = new CustomerInfo();
	        customerInfo.setName("Websystique Admin");
	        customerInfo.setAddress("WallStreet");
	        customerInfo.setEmail("1308445442@qq.com");
	        order.setCustomerInfo(customerInfo);
	        return order;
	    }
}
