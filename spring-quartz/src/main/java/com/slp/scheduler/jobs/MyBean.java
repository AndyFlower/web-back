package com.slp.scheduler.jobs;

import org.springframework.stereotype.Component;

/**
 * 
 * @ClassName:  MyBean   
 * @Description:�߳��е�beanָ��printMessage����  
 * @author: liping.sang
 * @date:   2017��9��27�� ����5:09:13   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 */
@Component("myBean")
public class MyBean {

	public void printMessage(){
		System.out.println("I am myBean .I am called by MethodInvokingJobDetailFactoryBean Using SimpleTriggerFactoryBean" +System.currentTimeMillis());
	}
}
