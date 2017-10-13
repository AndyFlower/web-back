package com.slp.获取元数据写入excel;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class ExportXls {
	 public static void mkXlsDemo() throws IOException{
	        //需求: 创建一个工作薄:a.xls, 工作表: 表1,  第4行第5列的单元格中写入文字:湖南城院
	        HSSFWorkbook book = new HSSFWorkbook();
	        HSSFSheet sheet = book.createSheet("表一");
	        System.out.println("开始");
	        HSSFRow row4 = sheet.createRow(3);//行数为下标加1
	        //该方法的参数值是从0开始的---真正的表格中的序号是从1开始标示

	        HSSFCell cell5 = row4.createCell(4);
	        cell5.setCellValue("中国");
	        FileOutputStream fout = new FileOutputStream("a.xls");
	        book.write(fout);
	    }
	 public static void exportDb2Xls(String dbName,String xlsFileName) throws Exception{
	        HSSFWorkbook book = new HSSFWorkbook();
	        Connection con = ConnsUtil的代理模式.getConn();
	        DatabaseMetaData dm = con.getMetaData();

	        //写代码时，尽量避免结果集套接操作，在一个结果集操作的内部进行其它结果集操作
	        //如果有事务，一个结果集的回退或提交可能会波及另一个
	        ResultSet rs = dm.getTables(dbName, dbName, null, new String[]{"TABLE"});

	        List<String> tables = new ArrayList<String>();
	        while(rs.next()){
	            String tableName = rs.getString("TABLE_NAME");
	            tables.add(tableName);
	        }

	        Statement st = con.createStatement();
	        for(String tableName: tables){
	        	System.out.println("tableName"+tableName);
	            //创建一个表名为tableName的表
	            HSSFSheet sheet = book.createSheet(tableName);
	            //这样写，可以跨数据库访问
	            String sql ="select * from "+dbName+"."+tableName;
	            rs = st.executeQuery(sql);

	            //把表头遍历出来且写到xls文件中
	            HSSFRow row = sheet.createRow(0);//表头行
	            ResultSetMetaData rsmd = rs.getMetaData();

	            int colNum = rsmd.getColumnCount();
	            for(int i=0;i<colNum;i++){
	                HSSFCell cell = row.createCell(i);
	                String colName = rsmd.getColumnName(i+1);
	                cell.setCellValue(colName);
	            }

	            //所有数据行
	            int idx = 1;
	            while(rs.next()){
	                row = sheet.createRow(idx++);
	                for(int i=0;i<colNum;i++){
	                    HSSFCell cell = row.createCell(i);
	                    cell.setCellValue( rs.getString(i+1) );
	                }
	            }
	        }

	        FileOutputStream fout = new FileOutputStream(xlsFileName);

	        book.write(fout);
	    }
	 public static void main(String[] args) {
		 try {
			 System.out.println("开始");
			mkXlsDemo();
			 String dbName="dev";
		        String xlsFileName="b.xls";
		       exportDb2Xls(dbName,xlsFileName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
