package com.slp.base.conn008;

import java.util.ArrayList;
import java.util.List;

public class ListAdd1 {

	/**
	 * 1、不添加volatile关键字的时候
	 * 输出结果：当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *2、添加volatile关键字
	 *当前线程：t1添加了一个元素..
     *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程收到通知：t2 list size = 5 线程停止..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *当前线程：t1添加了一个元素..
	 *Exception in thread "t2" java.lang.RuntimeException
	 *at com.slp.base.conn008.ListAdd1$2.run(ListAdd1.java:58)
	 *	at java.lang.Thread.run(Thread.java:745)
	 */
	private volatile static List list = new ArrayList();	
	
	public void add(){
		list.add("slp");
	}
	public int size(){
		return list.size();
	}
	
	public static void main(String[] args) {
		
		final ListAdd1 list1 = new ListAdd1();
		
		Thread t1 = new Thread(new Runnable() {
			@Override
			public void run() {
				try {
					for(int i = 0; i <10; i++){
						list1.add();
						System.out.println("当前线程：" + Thread.currentThread().getName() + "添加了一个元素..");
						Thread.sleep(500);
					}	
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}, "t1");
		
		Thread t2 = new Thread(new Runnable() {
			@Override
			public void run() {
				while(true){
					if(list1.size() == 5){
						System.out.println("当前线程收到通知：" + Thread.currentThread().getName() + " list size = 5 线程停止..");
						throw new RuntimeException();
					}
				}
			}
		}, "t2");		
		
		t1.start();
		t2.start();
	}
	
	
}
