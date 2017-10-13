package com.slp.test;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Client {
public static void main(String[] args) {
	
	//被代理的对象
	final IRenter r = new Renter();
	//Obj是代理后的对象
	Object obj = Proxy.newProxyInstance(Client.class.getClassLoader(), new Class[]{IRenter.class}, new InvocationHandler() {
		
		@Override
		public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
			System.out.println("我是中介");
			/**
			 * 在这里，我们将房东说的话和返回值给拦截了
			 */
			if(method.getName().equals("say")){
				System.out.println("我是中介，您还没交中介费，无法联系房东");
				return "";
			}
			//r是原来的对象
			Object obj = method.invoke(r, args);
			System.out.println("欢迎再来找我中介");
			//这个返回调用的就是r中的方法method.invoke(r,args);返回结果
			return obj;
		}
	});
	IRenter ir = (IRenter)obj;
	ir.rent(3);
	System.out.println(ir.say());
}
}
