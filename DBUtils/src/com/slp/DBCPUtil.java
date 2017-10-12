package com.slp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSourceFactory;

/**
 * 
 * @ClassName:  DBCPUtil   
 * @Description:ʹ��dbcp�������ݿ����ӳ�  
 * @author: liping.sang
 * @date:   2017��10��11�� ����3:13:33   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 * ʹ�õ���jar����commons-dbutils
 *               commons-pool2-2.4.2
 *               commons-dbcp2-2.1.1
 *               commons-logging-1.2
 */
public class DBCPUtil {

	private static Properties prop = new Properties();
	private static DataSource dataSource;
	
	private static ThreadLocal<Connection> t = new ThreadLocal<>();
	/**
	 * ��ʼ�����ӳ�
	 */
	static{
		//������������
		prop.setProperty("driverClassName", "com.mysql.jdbc.Driver");
		//����url
		prop.setProperty("url", "jdbc:mysql://localhost:3306/deve?useUnicode=true&characterEncoding=UTF-8");
		//�û���
		prop.setProperty("username", "sanglp");
		//����
		prop.setProperty("password", "12345678");
		//��ʼ������
		prop.setProperty("initialSize", "5");
		//���������
		prop.setProperty("maxTotal", "20");
		//��С��������
		prop.setProperty("minIdle", "5");
		//����������
		prop.setProperty("maxIdle", "10");
		//�ȴ����ӵ����ʱʱ�䣨��λ�����룩
		//����δʹ��ʱ�Ƿ��ջ�
		prop.setProperty("removeAbandonedOnMaintenance", "true");
		prop.setProperty("removeAbandonedOnBorrow", "true");
		
		try {
			dataSource = BasicDataSourceFactory.createDataSource(prop);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 
	 * @Title: getDataSource   
	 * @Description: ��ȡdataSource   
	 * @param: @return      
	 * @return: DataSource      
	 * @throws
	 */
	public static DataSource getDataSource(){

        return dataSource;

    }
	
	/**
	 * 
	 * @Title: propertyFileConnection   
	 * @Description: ͨ�������ļ���ʽ���ò�����ʹ��dbcp��   
	 * @param: @return
	 * @param: @throws Exception      
	 * @return: Connection      
	 * @throws
	 */
	public Connection propertyFileConnection() throws Exception{
		Properties properties = new Properties();
		//properties.load(DBCPUtil.class.getResourceAsStream("dbcp.properties"));//�����ļ��͵�ǰ���class����һ��
		properties.load(DBCPUtil.class.getClassLoader().getResourceAsStream("dbcp.properties"));//�����ļ�Ҫ����src(bin)�ĸ�Ŀ¼
		DataSource pool = BasicDataSourceFactory.createDataSource(properties);
		Connection connection = pool.getConnection();
		return connection;
		
	}
	
	/**
	 * 
	 * @Title: getConnection   
	 * @Description: ���Connection����
	 * @param: @return
	 * @param: @throws SQLException      
	 * @return: Connection      
	 * @throws
	 */
	public static Connection getConnection() throws SQLException {
		//1�����ȴӱ����̹߳������t����
		Connection connection = t.get();
		//2�����û�еĻ������»�ȡһ��
		if(connection ==null){
			connection = dataSource.getConnection();
			//3����connection������뱾���̹߳������
			t.set(connection);
		}
		return connection;
	}
}
