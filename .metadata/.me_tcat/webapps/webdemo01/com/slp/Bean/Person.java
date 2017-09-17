package com.slp.Bean;

public class Person {
	private String p_name;
	private String age;
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public Person(String p_name, String age) {
		super();
		this.p_name = p_name;
		this.age = age;
	}
	public Person() {
		super();
	}
	
	

}
