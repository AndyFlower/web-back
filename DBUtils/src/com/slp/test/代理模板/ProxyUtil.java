package com.slp.test.����ģ��;

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

        //obj�Ǵ����ķ��ؽ����ʵ����method.invoke(srcObj, args)�ķ��ؽ��
        return obj;
    }

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		System.out.println("�����˴�������");

        //���srcObj����ԭ���Ķ���
        return method.invoke(srcObj, args);
	}

}
