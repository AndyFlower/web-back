package com.slp.test;

public class Renter implements IRenter {

	@Override
	public void rent(int i) {
		System.out.println("����"+i+"�䷿����Ҫ��500Ԫ");
	}

	@Override
	public String say() {
		System.out.println("Renter����ã����Ƿ���������ֻ��Ҫ300Ԫ");
		return "�����ķ��ؽ��";
	}

}
