package com.slp;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * 
 * @ClassName:  ConnsUtilTest   
 * @Description:连接工具类测试 
 * @author: liping.sang
 * @date:   2017年10月13日 上午8:52:45   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 * 通常情况下，在返回Connection对象到池中的时候，用普通的调用，不可避免的要去调用自己的返回方法，来代替之前的close()，如果不想改变习惯的话
 * 就需要用到装饰模式或者代理模式
 */
public class ConnsUtilTest {

	 public static void main(String[] args) {
	        Connection con = null;
	        try{
	            con = ConnsUtil.getConnection();
	            con.setAutoCommit(false);

	            Statement st = con.createStatement();
	            String sql ="insert into users values('P201','关羽','30') ";
	            st.execute(sql);
	            sql ="insert into users values('P202','张飞','25') ";
	            st.execute(sql);
	            new OneThread(1).start();
	            new OneThread(2).start();
	            new OneThread(3).start();
	            new OneThread(4).start();
	            new OneThread(5).start();

	            System.out.println("主线程准备提交...");
	            con.commit();
	            System.out.println("主线程提交完毕...");
	        }catch (Exception e) {
	            try {
	                con.rollback();
	                System.out.println("主线程回滚了...");
	            } catch (SQLException e1) {
	                throw new RuntimeException("主线程事务回滚失败!", e1);
	            }
	        }finally{
	            try {
	                if(con!=null){
	                    con.setAutoCommit(true);
	                    ConnsUtil.back(con);
	                    //con.close();//如果要把close内部的功能换成还连接，就需要我们以后的技术来实现
	                }
	            } catch (SQLException e) {
	                throw new RuntimeException("主线程连接关闭失败!", e);
	            }
	        }

	    }
	}

	class OneThread extends Thread{
	    private int n;
	    public OneThread(int n) {
	        this.n = n;
	    }

	    @Override
	    public void run() {
	        Connection con = null;
	        try{
	            con = ConnsUtil.getConnection();
	            con.setAutoCommit(false);

	            Statement st = con.createStatement();
	            String sql ="insert into users values('P30"+n+"','刘备','30') ";
	            st.execute(sql);
	            sql ="insert into users values('P31"+n+"','曹操','25') ";
	            st.execute(sql);
	            System.out.println("第"+n+"个线程准备提交...");
	            con.commit();
	            System.out.println("第"+n+"个线程提交完毕...");
	        }catch (Exception e) {
	            try {
	                con.rollback();
	                System.out.println("第"+n+"个线程回滚了...");
	            } catch (SQLException e1) {
	                throw new RuntimeException("第"+n+"事务回滚失败!", e1);
	            }
	        }finally{
	            try {
	                if(con!=null){
	                    con.setAutoCommit(true);
	                    //con.close();
	                    
	                    ConnsUtil.back(con);
	                }
	            } catch (SQLException e) {
	                throw new RuntimeException("第"+n+"连接关闭失败!", e);
	            }
	        }
	    }

	}