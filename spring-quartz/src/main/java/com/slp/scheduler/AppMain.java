package com.slp.scheduler;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
   AbstractApplicationContext context = new ClassPathXmlApplicationContext("quartz-context.xml");
	}

}
