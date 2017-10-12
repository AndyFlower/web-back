package com.slp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;

public class ProcedureDemo {
	/**
	 * 
	 * @Title: callProcedureDemo   
	 * @Description: ִ�� ���������Ĵ洢����
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public void callProcedureDemo() throws Exception {
		Connection con = ConnFactory.getConnection();

		String sql = "call p1()";
		CallableStatement cst = con.prepareCall(sql);

		ResultSet rs = cst.executeQuery();

		while (rs.next()) {
			System.out.println(rs.getString(1) + "," + rs.getString(2) + "," + rs.getInt(3));
		}
	}
	
	/**
	 * 
	 * @Title: callProcedureDemo2   
	 * @Description: ִ�д������Ĵ洢����   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public void callProcedureDemo2() throws Exception{
        Connection con = ConnFactory.getConnection();

        String sql="call p2(?,?,?)";

        CallableStatement cst = con.prepareCall(sql);

        cst.setString(1, "123");
        cst.setString(2, "�ɶ�");
        cst.setInt(3, 43);

        ResultSet rs = cst.executeQuery();
        while(rs.next()){
            System.out.println(rs.getString(1)+","+rs.getString(2)+","+rs.getInt(3));
        }
    }
	/**
	 * 
	 * @Title: callProcedureDemo3   
	 * @Description: ִ�д�������������Ĵ洢����   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public void callProcedureDemo3() throws Exception{
        Connection con = ConnFactory.getConnection();

        String sql = "call p3(?,?,?,?)";

        CallableStatement cst =con.prepareCall(sql);

        cst.setString(1, "P1");
        cst.setString(2, "����");
        cst.setInt(3, 23);

        //��ָ�����λ�õ� OUT ����ע��Ϊ������JDBC ���͡�
        cst.registerOutParameter(4, Types.INTEGER);

        cst.execute();

        //��ȡ����Ĳ���
        int count = cst.getInt(4);
        System.out.println(count);
    }
}
