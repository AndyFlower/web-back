package com.slp.test.代理模板;

public class Person implements IPerson {

	private String name;
	
	public Person(String name) {
		super();
		this.name = name;
	}

	@Override
	public void sayHi() {
		System.out.println(name+"说：祝你快乐");

	}

}
