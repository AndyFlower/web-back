package com.slp.test.����ģ��;

public class Person implements IPerson {

	private String name;
	
	public Person(String name) {
		super();
		this.name = name;
	}

	@Override
	public void sayHi() {
		System.out.println(name+"˵��ף�����");

	}

}
