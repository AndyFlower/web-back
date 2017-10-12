package com.slp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 * @ClassName:  DbAccess   
 * @Description:ʹ��Java�����ݿ�����ɾ�Ĳ�
 * @author: liping.sang
 * @date:   2017��10��11�� ����4:11:10   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 */
public class DbAccess {

	/**
	 * 
	 * @Title: hello   
	 * @Description: �򵥵���ɾ�Ĳ�   
	 * @param: @throws ClassNotFoundException
	 * @param: @throws SQLException      
	 * @return: void      
	 * @throws
	 */
	public static void hello() throws ClassNotFoundException, SQLException {
		//1������������
		Class.forName("com.mysql.jdbc.Driver");
		//2����������
		String url = "jdbc:mysql://127.0.0.1:3306/dev?useUnicode=true&characterEncoding=utf-8";//����ָ����������  
		 Connection connection = DriverManager.getConnection(url, "root", "123456");
		 Statement st = connection.createStatement(); 
		 String sql = "insert into users values('1','1','1')"; 
		 st.execute(sql);//��ɾ����:st.excute()����
		 
		 
		 //4 �����ݿ���в���(��ѯ��  
	         sql = "select * from users";  
	        ResultSet rs =  st.executeQuery(sql);  
	        while(rs.next()){  
	            //Ϊʲô����hasNext�أ���Ϊrs����һ��ָ�룬rs�ʼ��λ�ò�����ָ���һ�����ݣ�  
	            //����ָ��ͷ��ַ,���Բ�����hasNext���жϣ�������������һ������.  
	            String no = rs.getString(1);//ָ���кŵķ�ʽ��ȡ����һ�е����Ϊ1��  
	              
	            String userId = rs.getString("userId");//ָ�������ķ�ʽ����ȡ  
	            String pwd = rs.getString("pwd");  
	            String id = rs.getString("id");  
	            System.out.println(no+","+userId+","+pwd+","+id);  
	        }  
	}
	/**
	 * 
	 * @Title: transactionDemo   
	 * @Description: �ֶ���������  
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public static void transactionDemo() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		//2����������
		String url = "jdbc:mysql://127.0.0.1:3306/dev?useUnicode=true&characterEncoding=utf-8&useSSL=true";//����ָ����������  
		 Connection connection = DriverManager.getConnection(url, "root", "123456");

        //3����ȡ������
        Statement st = connection.createStatement();

        //4������ΪJavaʵ��������

        try {
        	connection.setAutoCommit(false);//������false��ʼ�����¶���һ������

            String sql = "insert into users values('2','2','2')";
            st.execute(sql);//��

            sql = "delete from users where id = '1'";
            st.execute(sql);//ɾ

            sql = "update users set pwd='3' where id='2'";
            st.execute(sql);

            connection.commit();//�ύ

        } catch (Exception e) {
        	connection.rollback();//��������쳣�����Ǿ�������ع�
        } finally{
        	connection.setAutoCommit(true);//�����û�ȥ
        	connection.close();
        }
	}
	public static void main(String[] args) throws Exception {
		//hello();
		transactionDemo();
	}
}
