package com.slp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CRUDExample {
	 public static void results() throws SQLException{
	        Statement st = ConnFactory.getConnection().createStatement();
	        String sql = "select * from users";

	        ResultSet res = st.executeQuery(sql);
	        while(res.next()){
	        	String id = res.getString(1);
	            String name = res.getString(2);
	            String price = res.getString(3);
	            //注意！这个是获取日期时间型数据的方式
	           System.out.println(id+" "+name+" "+price);
	        }
	        ConnFactory.getConnection().close();
	    }
	 
	 public static void execute() throws SQLException{ 
	        Statement st = ConnFactory.getConnection().createStatement();
	        //测试语句：

	        //测试增加数据
	        //String sql = "insert into users  ('4','4','4' )";

	        //测试删除数据
	        //String sql = "delete from users where id='2'";

	        //测试查询数据
	        String sql = "select * from users";

	        //如果第一个结果为一个结果集，则为 true。否则为 false。
	        boolean boo = st.execute(sql);
	        System.out.println(boo);
	        if(boo){
	            ResultSet rs = st.getResultSet();
	            while(rs.next()){
	                System.out.println(rs.getInt(1)+","+rs.getString(2));
	            }
	        }
	        ConnFactory.getConnection().close();
	    }
	 public static void executeUpdate() throws SQLException{
	        Statement st = ConnFactory.getConnection().createStatement();

	        //增加
	        String sql = "insert into users(userId,pwd,id) values('1223456','poekdsnjkhfbhdsfdf','fdsecfghted' )";

	        //修改
	        //String sql="update users set userId=userId+'1'";

	        //删除
	        //String sql ="delete from users where id=2";

	        //查询--不能进行查询！！！
	        //String sql = "select * from users";

	        int num = st.executeUpdate(sql);//返回值是影响的行数
	        System.out.println(num);
	    }
	 public static void batchDemo() throws SQLException{
	        Connection con  = ConnFactory.getConnection();

	        String sql = "insert into users(userId,pwd,id) values('1223456','poekdsnjkhfbhdsfdf','fdsecfghted' )";

	        Statement st = con.createStatement();

	        for(int i=0;i<5;i++){
	            if(i==2){
	                //错误的MySQL代码！
	                sql = "insert into users(userId,pwd,id) values('1232',poekdsnjkhfbhdsf21df,'fds222ecfghted' )";
	            }
	            st.addBatch(sql);
	        }
	        sql = "update users set id = '123' where id='2'";

	        st.addBatch(sql);

	        int a[] = st.executeBatch();
	        for(int x:a){
	            System.out.println(x);
	        }
	        ConnFactory.getConnection().close();

	    }
	 public static void main(String[] args) throws SQLException {
		// results();
		 //executeUpdate();
		 batchDemo();
	}
}
