package com.slp;

public class RabbitApp {
	public static void main(String[] args) {
		//创建子类对象
		Rabbit rabbit = new Rabbit();
		Tortoise tortoise = new Tortoise();
		//调用start方法  不要调用run方法
		rabbit.start();
		tortoise.start();
	}
    
}
