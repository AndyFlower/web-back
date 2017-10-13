package com.slp.test;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Client {
public static void main(String[] args) {
	
	//������Ķ���
	final IRenter r = new Renter();
	//Obj�Ǵ����Ķ���
	Object obj = Proxy.newProxyInstance(Client.class.getClassLoader(), new Class[]{IRenter.class}, new InvocationHandler() {
		
		@Override
		public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
			System.out.println("�����н�");
			/**
			 * ��������ǽ�����˵�Ļ��ͷ���ֵ��������
			 */
			if(method.getName().equals("say")){
				System.out.println("�����н飬����û���н�ѣ��޷���ϵ����");
				return "";
			}
			//r��ԭ���Ķ���
			Object obj = method.invoke(r, args);
			System.out.println("��ӭ���������н�");
			//������ص��õľ���r�еķ���method.invoke(r,args);���ؽ��
			return obj;
		}
	});
	IRenter ir = (IRenter)obj;
	ir.rent(3);
	System.out.println(ir.say());
}
}
