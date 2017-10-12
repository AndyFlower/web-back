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
 * @Description:使用dbcp创建数据库连接池  
 * @author: liping.sang
 * @date:   2017年10月11日 下午3:13:33   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 * 使用到的jar包：commons-dbutils
 *               commons-pool2-2.4.2
 *               commons-dbcp2-2.1.1
 *               commons-logging-1.2
 */
public class DBCPUtil {

	private static Properties prop = new Properties();
	private static DataSource dataSource;
	
	private static ThreadLocal<Connection> t = new ThreadLocal<>();
	/**
	 * 初始化连接池
	 */
	static{
		//设置连接驱动
		prop.setProperty("driverClassName", "com.mysql.jdbc.Driver");
		//连接url
		prop.setProperty("url", "jdbc:mysql://localhost:3306/deve?useUnicode=true&characterEncoding=UTF-8");
		//用户名
		prop.setProperty("username", "sanglp");
		//密码
		prop.setProperty("password", "12345678");
		//初始连接数
		prop.setProperty("initialSize", "5");
		//最大活动连接数
		prop.setProperty("maxTotal", "20");
		//最小空闲连接
		prop.setProperty("minIdle", "5");
		//最大空闲连接
		prop.setProperty("maxIdle", "10");
		//等待连接的最大超时时间（单位：毫秒）
		//连接未使用时是否收回
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
	 * @Description: 获取dataSource   
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
	 * @Description: 通过配置文件方式设置参数，使用dbcp池   
	 * @param: @return
	 * @param: @throws Exception      
	 * @return: Connection      
	 * @throws
	 */
	public Connection propertyFileConnection() throws Exception{
		Properties properties = new Properties();
		//properties.load(DBCPUtil.class.getResourceAsStream("dbcp.properties"));//配置文件和当前类的class放在一起
		properties.load(DBCPUtil.class.getClassLoader().getResourceAsStream("dbcp.properties"));//配置文件要放在src(bin)的根目录
		DataSource pool = BasicDataSourceFactory.createDataSource(properties);
		Connection connection = pool.getConnection();
		return connection;
		
	}
	
	/**
	 * 
	 * @Title: getConnection   
	 * @Description: 获得Connection对象
	 * @param: @return
	 * @param: @throws SQLException      
	 * @return: Connection      
	 * @throws
	 */
	public static Connection getConnection() throws SQLException {
		//1、首先从本地线程管理对象t中拿
		Connection connection = t.get();
		//2、如果没有的话就重新获取一个
		if(connection ==null){
			connection = dataSource.getConnection();
			//3、将connection对象放入本地线程管理对象
			t.set(connection);
		}
		return connection;
	}
}
