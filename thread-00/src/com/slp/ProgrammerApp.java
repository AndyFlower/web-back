package com.slp;

public class ProgrammerApp {
	public static void main(String[] args) {
		//������ʵ��ɫ
		 Programmer programmer = new Programmer();
		 //���������ɫ+��ʵ��ɫ����
		 Thread proxy =new Thread(programmer);
		 //����start() �����߳�
		 proxy.start();
		 
		 for (int i = 0; i < 1000; i++) {
			System.out.println("һ����qq");
		}
	}

}
