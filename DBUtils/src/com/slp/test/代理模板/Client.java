package com.slp.test.����ģ��;

public class Client {
public static void main(String[] args) {
	Dog d = new Dog("����");
	IAnimal iDog = (IAnimal) ProxyUtil.getProxy(d);
	iDog.run();		
	Person p = new Person("С��");
    IPerson ip =(IPerson)  ProxyUtil.getProxy(p);
    ip.sayHi(); 		
}
}
