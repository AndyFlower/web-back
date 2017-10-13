package com.slp.test.代理模板;

public class Client {
public static void main(String[] args) {
	Dog d = new Dog("二哈");
	IAnimal iDog = (IAnimal) ProxyUtil.getProxy(d);
	iDog.run();		
	Person p = new Person("小方");
    IPerson ip =(IPerson)  ProxyUtil.getProxy(p);
    ip.sayHi(); 		
}
}
