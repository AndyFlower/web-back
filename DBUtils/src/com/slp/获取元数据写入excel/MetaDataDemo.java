package com.slp.获取元数据写入excel;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class MetaDataDemo {
	 // ※元信息1：通过con获得DatabaseMetaData(数据库元信息)---数据库连接信息、数据库名、表名
	public static void databaseMetadataDemo() throws Exception {
        // 获取数据库的元信息
        Connection con = ConnsUtil的代理模式.getConn();
        // ********关键
        DatabaseMetaData dm = con.getMetaData();

        // 获取此 JDBC 驱动程序的名称。
        System.out.println(dm.getDriverName());
        // 获取此 JDBC 驱动程序的主版本号。
        System.out.println(dm.getDriverMajorVersion());
        // 获取在此数据库中在同一时间内可处于开放状态的最大活动语句数。--返回结果为零意味着没有限制或限制是未知的
        System.out.println(dm.getMaxStatements());
        // 获取此驱动程序的主 JDBC 版本号。
        System.out.println(dm.getJDBCMajorVersion());
        // 还有很多方法，可以去API自己查
        System.out.println("=========================");

        // 下面是动态获取数据库名

        ResultSet rs = dm.getCatalogs();
        // 相当于执行:show databases;

        while (rs.next()) {
            System.out.println(rs.getString(1));
            // 进行元数据操作获得数据库名
        }

        // 知道数据库的名字
        con.createStatement().execute("use dev");
        // 动态获取表名

        // 可以把参数null写成“%o%”进行模糊查询
        ResultSet rs2 = dm.getTables("root", "123456", null,
                new String[] { "TABLE" });

        while (rs2.next()) {
            System.out.println(rs2.getString("TABLE_NAME"));
            // 进行元数据操作，获得表名
        }
    }
	
	// ※元信息2：通过rs获得ResultSetMetaData(结果集元信息)---表头(每个字段名)、表格行数、列数
    // 在知道数据库名和表名的情况下，把表头和表内容都查询出来。
    // 站在结果集的高度---也就是表格
    public static void resultSetMetaDataDemo() throws Exception{
        Connection con1 = ConnsUtil的代理模式.getConn();
        Statement st = con1.createStatement();
        //如果是跨库查询,sql:“数据库名.表名”----select * from 数据库.表名
        String sql = "select * from users";//我们的连接是dev数据库的，访问dev数据库直接写表名就可以
        ResultSet rs = st.executeQuery(sql);

        //结果集的元信息
        ResultSetMetaData rsmd = rs.getMetaData();
        int columns = rsmd.getColumnCount();
        //获得表格的列数

        //输出整个数据表(包括表头)
        //表头
        for(int i=0;i<columns;i++){
            String columnName = rsmd.getColumnName(i+1);
            System.out.print(columnName+"\t");
        }
        System.out.println();
        System.out.println("------------------------");
        //表内容
        while(rs.next()){
            for(int i=0;i<columns;i++){
                String content = rs.getString(i+1);
                System.out.print(content+"\t");
            }
            System.out.println();
        }
    }
    
    
    public static void main(String[] args) {
    	try {
			databaseMetadataDemo();
			resultSetMetaDataDemo();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
