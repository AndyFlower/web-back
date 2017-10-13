package com.slp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class ConnsUtil {
	//����һ����
    private static List<Connection> pool = new ArrayList<Connection>();
  //�������е�Connection�������
    private static final int NUM = 3;
    static{
        try {
            //��ȡ�����ļ�
            Properties p = new Properties();
            p.load(ConnsUtil.class.getClassLoader().getResourceAsStream("jdbc.properties"));
            String driver = p.getProperty("driver");
            String url = p.getProperty("url");
            String user = p.getProperty("username");
            String password = p.getProperty("password");

            Class.forName(driver);
            for(int i=0;i<NUM;i++){
                Connection con = DriverManager.getConnection(url, user, password);
                //�������
                pool.add(con);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static synchronized Connection getConnection() throws InterruptedException{
        if(pool.size()<=0){
            Thread.sleep(100);
            return getConnection();
        }
        return pool.remove(0);
    }
    
    public static void back(Connection con){
        System.out.println("������һ��Connection����...");
        pool.add(con);
    }
}
