package com.slp;

public class Web12306 implements Runnable{

	private int num = 50;
	
	public void run() {
        while(true){
        	if(num<=0){
        		break;
        	}
        	System.out.println(Thread.currentThread().getName()+"������"+num--);
        }		
	}
	
	public static void main(String[] args) {
		//��ʵ��ɫ
		Web12306 web12306 = new Web12306();
		//����
		Thread thread1 = new Thread(web12306,"·�˼�");
		Thread thread2 = new Thread(web12306,"·����");
		Thread thread3 = new Thread(web12306,"·�˱�");
		//�����߳�
		thread1.start();
		thread2.start();
		thread3.start();

	}
}
