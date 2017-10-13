package com.slp;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * 
 * @ClassName:  ConnsUtilTest   
 * @Description:���ӹ�������� 
 * @author: liping.sang
 * @date:   2017��10��13�� ����8:52:45   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 * ͨ������£��ڷ���Connection���󵽳��е�ʱ������ͨ�ĵ��ã����ɱ����Ҫȥ�����Լ��ķ��ط�����������֮ǰ��close()���������ı�ϰ�ߵĻ�
 * ����Ҫ�õ�װ��ģʽ���ߴ���ģʽ
 */
public class ConnsUtilTest {

	 public static void main(String[] args) {
	        Connection con = null;
	        try{
	            con = ConnsUtil.getConnection();
	            con.setAutoCommit(false);

	            Statement st = con.createStatement();
	            String sql ="insert into users values('P201','����','30') ";
	            st.execute(sql);
	            sql ="insert into users values('P202','�ŷ�','25') ";
	            st.execute(sql);
	            new OneThread(1).start();
	            new OneThread(2).start();
	            new OneThread(3).start();
	            new OneThread(4).start();
	            new OneThread(5).start();

	            System.out.println("���߳�׼���ύ...");
	            con.commit();
	            System.out.println("���߳��ύ���...");
	        }catch (Exception e) {
	            try {
	                con.rollback();
	                System.out.println("���̻߳ع���...");
	            } catch (SQLException e1) {
	                throw new RuntimeException("���߳�����ع�ʧ��!", e1);
	            }
	        }finally{
	            try {
	                if(con!=null){
	                    con.setAutoCommit(true);
	                    ConnsUtil.back(con);
	                    //con.close();//���Ҫ��close�ڲ��Ĺ��ܻ��ɻ����ӣ�����Ҫ�����Ժ�ļ�����ʵ��
	                }
	            } catch (SQLException e) {
	                throw new RuntimeException("���߳����ӹر�ʧ��!", e);
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
	            String sql ="insert into users values('P30"+n+"','����','30') ";
	            st.execute(sql);
	            sql ="insert into users values('P31"+n+"','�ܲ�','25') ";
	            st.execute(sql);
	            System.out.println("��"+n+"���߳�׼���ύ...");
	            con.commit();
	            System.out.println("��"+n+"���߳��ύ���...");
	        }catch (Exception e) {
	            try {
	                con.rollback();
	                System.out.println("��"+n+"���̻߳ع���...");
	            } catch (SQLException e1) {
	                throw new RuntimeException("��"+n+"����ع�ʧ��!", e1);
	            }
	        }finally{
	            try {
	                if(con!=null){
	                    con.setAutoCommit(true);
	                    //con.close();
	                    
	                    ConnsUtil.back(con);
	                }
	            } catch (SQLException e) {
	                throw new RuntimeException("��"+n+"���ӹر�ʧ��!", e);
	            }
	        }
	    }

	}