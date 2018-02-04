package com.slp;

public class Web12306 implements Runnable{

	private int num = 50;
	
	public void run() {
        while(true){
        	if(num<=0){
        		break;
        	}
        	System.out.println(Thread.currentThread().getName()+"抢到了"+num--);
        }		
	}
	
	public static void main(String[] args) {
		//真实角色
		Web12306 web12306 = new Web12306();
		//代理
		Thread thread1 = new Thread(web12306,"路人甲");
		Thread thread2 = new Thread(web12306,"路人乙");
		Thread thread3 = new Thread(web12306,"路人丙");
		//启动线程
		thread1.start();
		thread2.start();
		thread3.start();

	}
}
