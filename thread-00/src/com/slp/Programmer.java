package com.slp;
/**
 * 推荐使用Runnable创建线程
 *    1、避免单继承的局限性
 *    2、便于共享资源
 * 
 * 使用Runnable创建接口
 * 1、类实现runnable接口+重写run()  -->真实角色类
 * 2、启动多线程 使用静态代理
 *   1)创建真实角色
 *   2)创建代理角色+真实角色引用
 *   3)调用start启动线程
 * @author sanglp
 *
 */
public class Programmer implements Runnable{
public void run() {
for (int i = 0; i < 1000; i++) {
	System.out.println("一边敲helloworld");
}	
}
}
