package com.slp;

public class RabbitApp {
	public static void main(String[] args) {
		//�����������
		Rabbit rabbit = new Rabbit();
		Tortoise tortoise = new Tortoise();
		//����start����  ��Ҫ����run����
		rabbit.start();
		tortoise.start();
	}
    
}
