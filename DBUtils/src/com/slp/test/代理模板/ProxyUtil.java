package com.slp.test.代理模板;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class ProxyUtil implements InvocationHandler {
	private Object srcObj=null;

    public ProxyUtil(Object srcObj) {
        this.srcObj=srcObj;
    }
    
    public static Object getProxy(Object srcObj){
        Object obj = Proxy.newProxyInstance(
                ProxyUtil.class.getClassLoader(),
                srcObj.getClass().getInterfaces(),
                new ProxyUtil(srcObj)); 

        //obj是代理后的返回结果其实就是method.invoke(srcObj, args)的返回结果
        return obj;
    }

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		System.out.println("进入了代理区域");

        //这个srcObj就是原来的对象
        return method.invoke(srcObj, args);
	}

}
