package com.slp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 * @ClassName:  DbAccess   
 * @Description:使用Java对数据库做增删改查
 * @author: liping.sang
 * @date:   2017年10月11日 下午4:11:10   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 */
public class DbAccess {

	/**
	 * 
	 * @Title: hello   
	 * @Description: 简单的增删改查   
	 * @param: @throws ClassNotFoundException
	 * @param: @throws SQLException      
	 * @return: void      
	 * @throws
	 */
	public static void hello() throws ClassNotFoundException, SQLException {
		//1、加载驱动器
		Class.forName("com.mysql.jdbc.Driver");
		//2、建立连接
		String url = "jdbc:mysql://127.0.0.1:3306/dev?useUnicode=true&characterEncoding=utf-8";//采用指定编码连接  
		 Connection connection = DriverManager.getConnection(url, "root", "123456");
		 Statement st = connection.createStatement(); 
		 String sql = "insert into users values('1','1','1')"; 
		 st.execute(sql);//增删改用:st.excute()方法
		 
		 
		 //4 对数据库进行操作(查询）  
	         sql = "select * from users";  
	        ResultSet rs =  st.executeQuery(sql);  
	        while(rs.next()){  
	            //为什么不用hasNext呢，因为rs就像一个指针，rs最开始的位置并不是指向第一个数据，  
	            //而是指向开头地址,所以不能用hasNext来判断，而必须跳过第一个不读.  
	            String no = rs.getString(1);//指定列号的方式读取。第一列的序号为1。  
	              
	            String userId = rs.getString("userId");//指定列名的方式来读取  
	            String pwd = rs.getString("pwd");  
	            String id = rs.getString("id");  
	            System.out.println(no+","+userId+","+pwd+","+id);  
	        }  
	}
	/**
	 * 
	 * @Title: transactionDemo   
	 * @Description: 手动控制事务  
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public static void transactionDemo() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		//2、建立连接
		String url = "jdbc:mysql://127.0.0.1:3306/dev?useUnicode=true&characterEncoding=utf-8&useSSL=true";//采用指定编码连接  
		 Connection connection = DriverManager.getConnection(url, "root", "123456");

        //3、获取语句对象
        Statement st = connection.createStatement();

        //4、下面为Java实现事务处理

        try {
        	connection.setAutoCommit(false);//从设置false开始，以下都是一个事务

            String sql = "insert into users values('2','2','2')";
            st.execute(sql);//增

            sql = "delete from users where id = '1'";
            st.execute(sql);//删

            sql = "update users set pwd='3' where id='2'";
            st.execute(sql);

            connection.commit();//提交

        } catch (Exception e) {
        	connection.rollback();//如果出现异常，我们就让事务回滚
        } finally{
        	connection.setAutoCommit(true);//再设置回去
        	connection.close();
        }
	}
	public static void main(String[] args) throws Exception {
		//hello();
		transactionDemo();
	}
}
