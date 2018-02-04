package com.slp;

public class ProgrammerApp {
	public static void main(String[] args) {
		//创建真实角色
		 Programmer programmer = new Programmer();
		 //创建代理角色+真实角色引用
		 Thread proxy =new Thread(programmer);
		 //调用start() 启动线程
		 proxy.start();
		 
		 for (int i = 0; i < 1000; i++) {
			System.out.println("一边聊qq");
		}
	}

}
