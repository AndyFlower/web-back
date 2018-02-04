package com.slp;

/**
 * 模拟龟兔赛跑
 * 1、创建多线程 继承Thread +重写run(线程体)
 * 2、使用现场：创建子类对象，对象.start()方法
 * @author sanglp
 *
 */
public class Rabbit  extends Thread{

	public void run() {
    for(int i=0;i<100;i++){
    	System.out.println("兔子跑了"+i+"步");
    }
	}

}
