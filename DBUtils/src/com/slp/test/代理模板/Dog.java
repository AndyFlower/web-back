package com.slp.test.����ģ��;

public class Dog implements IAnimal{

	private String name;
	
	public Dog(String name) {
		super();
		this.name = name;
	}

	@Override
	public void run() {
		System.out.println("Doge:"+name+" is  running");
		
	}

}
