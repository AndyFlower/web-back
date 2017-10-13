package com.slp.��ȡԪ����д��excel;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class ConnsUtil�Ĵ���ģʽ {
	private static List<Connection> pool = new ArrayList<Connection>();
	private static final int NUM=3;
	static{
        try {
            //��ȡ�����ļ�
            Properties p = new Properties();
            p.load(ConnsUtil�Ĵ���ģʽ.class.getClassLoader().getResourceAsStream("jdbc.properties"));
            String driver = p.getProperty("driver");
            String url = p.getProperty("url");
            String user = p.getProperty("username");
            String password = p.getProperty("password");
            Class.forName(driver);

            for(int i=0;i<NUM;i++){
                final Connection conn = DriverManager.getConnection(url, user, password);
                //Proxy.newProxyInstance(�������,class����(���������Ľӿڵ�class����),new InvocationHandler()); 
                Object obj = Proxy.newProxyInstance(
                		ConnsUtil�Ĵ���ģʽ.class.getClassLoader(),
                        conn.getClass().getInterfaces(),
                        new InvocationHandler() {

                            @Override
                            public Object invoke(Object proxy, Method method, Object[] args)
                                    throws Throwable {
                                if(method.getName().equalsIgnoreCase("close") && (args==null || args.length==0)){
                                    pool.add((Connection)proxy);
                                    return null;
                                }else{
                                    return method.invoke(conn, args);
                                }
                            }
                        });
                pool.add((Connection)obj);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	
	public static synchronized Connection getConn() throws Exception{
        if(pool.size()<=0){
            Thread.sleep(100);
            return getConn();
        }
        return pool.remove(0);
    }
}
