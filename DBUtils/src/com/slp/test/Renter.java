package com.slp.test;

public class Renter implements IRenter {

	@Override
	public void rent(int i) {
		System.out.println("给你"+i+"间房，需要交500元");
	}

	@Override
	public String say() {
		System.out.println("Renter：你好，我是房东，房子只需要300元");
		return "房东的返回结果";
	}

}
