package com.slp.��ȡԪ����д��excel;

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
	        //����: ����һ��������:a.xls, ������: ��1,  ��4�е�5�еĵ�Ԫ����д������:���ϳ�Ժ
	        HSSFWorkbook book = new HSSFWorkbook();
	        HSSFSheet sheet = book.createSheet("��һ");
	        System.out.println("��ʼ");
	        HSSFRow row4 = sheet.createRow(3);//����Ϊ�±��1
	        //�÷����Ĳ���ֵ�Ǵ�0��ʼ��---�����ı���е�����Ǵ�1��ʼ��ʾ

	        HSSFCell cell5 = row4.createCell(4);
	        cell5.setCellValue("�й�");
	        FileOutputStream fout = new FileOutputStream("a.xls");
	        book.write(fout);
	    }
	 public static void exportDb2Xls(String dbName,String xlsFileName) throws Exception{
	        HSSFWorkbook book = new HSSFWorkbook();
	        Connection con = ConnsUtil�Ĵ���ģʽ.getConn();
	        DatabaseMetaData dm = con.getMetaData();

	        //д����ʱ���������������׽Ӳ�������һ��������������ڲ������������������
	        //���������һ��������Ļ��˻��ύ���ܻᲨ����һ��
	        ResultSet rs = dm.getTables(dbName, dbName, null, new String[]{"TABLE"});

	        List<String> tables = new ArrayList<String>();
	        while(rs.next()){
	            String tableName = rs.getString("TABLE_NAME");
	            tables.add(tableName);
	        }

	        Statement st = con.createStatement();
	        for(String tableName: tables){
	        	System.out.println("tableName"+tableName);
	            //����һ������ΪtableName�ı�
	            HSSFSheet sheet = book.createSheet(tableName);
	            //����д�����Կ����ݿ����
	            String sql ="select * from "+dbName+"."+tableName;
	            rs = st.executeQuery(sql);

	            //�ѱ�ͷ����������д��xls�ļ���
	            HSSFRow row = sheet.createRow(0);//��ͷ��
	            ResultSetMetaData rsmd = rs.getMetaData();

	            int colNum = rsmd.getColumnCount();
	            for(int i=0;i<colNum;i++){
	                HSSFCell cell = row.createCell(i);
	                String colName = rsmd.getColumnName(i+1);
	                cell.setCellValue(colName);
	            }

	            //����������
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
			 System.out.println("��ʼ");
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
