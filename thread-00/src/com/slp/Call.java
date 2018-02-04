package com.slp;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * 使用Callable创建线程
 * @author sanglp
 *
 */
public class Call {
public static void main(String[] args) throws InterruptedException, ExecutionException {
	//创建线程
	ExecutorService ser = Executors.newFixedThreadPool(1);
	Race tortoise = new Race();
	Race rabbit = new Race();
	Future result1 = ser.submit(tortoise);
	Future result2 = ser.submit(rabbit);
	Thread.sleep(2000);
	tortoise.setFlag(false);
	rabbit.setFlag(false);
	//停止服务
	
	System.out.println("乌龟"+result1.get());
	System.out.println("兔子"+result2.get());
	ser.shutdown();
}
}

class Race implements Callable{

	private String name;//名称
	private long time;//延时时间
	private boolean flag = true;
	private int step = 0;//步
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public long getTime() {
		return time;
	}


	public void setTime(long time) {
		this.time = time;
	}


	public boolean isFlag() {
		return flag;
	}


	public void setFlag(boolean flag) {
		this.flag = flag;
	}


	public int getStep() {
		return step;
	}


	public void setStep(int step) {
		this.step = step;
	}


	public Race(String name, long time) {
		super();
		this.name = name;
		this.time = time;
	}


	public Race(String name) {
		super();
		this.name = name;
	}


	public Race() {
		super();
	}


	public Object call() throws Exception {
		while (flag) {
			Thread.sleep(time);
			step++;
			
		}
		return null;//step;
	}
	
}
