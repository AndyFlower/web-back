package com.slp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;

public class ProcedureDemo {
	/**
	 * 
	 * @Title: callProcedureDemo   
	 * @Description: 执行 不带参数的存储过程
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
	 * @Description: 执行带参数的存储过程   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public void callProcedureDemo2() throws Exception{
        Connection con = ConnFactory.getConnection();

        String sql="call p2(?,?,?)";

        CallableStatement cst = con.prepareCall(sql);

        cst.setString(1, "123");
        cst.setString(2, "成都");
        cst.setInt(3, 43);

        ResultSet rs = cst.executeQuery();
        while(rs.next()){
            System.out.println(rs.getString(1)+","+rs.getString(2)+","+rs.getInt(3));
        }
    }
	/**
	 * 
	 * @Title: callProcedureDemo3   
	 * @Description: 执行带输入输出参数的存储过程   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public void callProcedureDemo3() throws Exception{
        Connection con = ConnFactory.getConnection();

        String sql = "call p3(?,?,?,?)";

        CallableStatement cst =con.prepareCall(sql);

        cst.setString(1, "P1");
        cst.setString(2, "赵雷");
        cst.setInt(3, 23);

        //将指定序号位置的 OUT 参数注册为给定的JDBC 类型。
        cst.registerOutParameter(4, Types.INTEGER);

        cst.execute();

        //获取输出的参数
        int count = cst.getInt(4);
        System.out.println(count);
    }
}
