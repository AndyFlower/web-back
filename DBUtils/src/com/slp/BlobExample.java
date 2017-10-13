package com.slp;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * 
 * @ClassName:  BlobExample   
 * @Description:�������ı����� 
 * @author: liping.sang
 * @date:   2017��10��12�� ����11:32:14   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 */
public class BlobExample {
	/**
	 * 
	 * @Title: writeText   
	 * @Description: д���ı�����   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public  void writeText() throws Exception {
		Connection con = ConnFactory.getConnection();
		String sql = "insert into node values(?,?)";

		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, 2);

		// this.getClass().getClassLoader().getResource("").getPath()�õ����Ǳ���Ŀ.class�ĸ�Ŀ¼�ľ���·��(bin/)
		InputStream in = this.getClass().getClassLoader().getResourceAsStream("jdbc.properties");
		System.out.println(this.getClass().getClassLoader().getResource("").getPath());
		// һ��С֪ʶ�㣬��Ϊ�������õ���binĿ¼�µ��ļ���srcĿ¼�µ�.java�ļ��ᱻmyeclipse�����.class�ļ������Ӧ��binĿ¼�¡�
		// ����ֱ����src�ļ��½�����.java�ļ����޷���myeclipseԭ��������binĿ¼�µġ������Ҫ����.java�ļ�������Ҫֱ��ȥ��.java�ļ������Ӧ��binĿ¼�¡�
		pst.setAsciiStream(2, in);

		pst.executeUpdate();
		con.close();

	}
	
	/**
	 * 
	 * @Title: readText   
	 * @Description: ��ȡ���ı�����   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	 public static void readText() throws Exception {
	        Connection con = ConnFactory.getConnection();
	        String sql = "select * from node where id=1";
	        PreparedStatement pst = con.prepareCall(sql);
	        ResultSet rs = pst.executeQuery();
	        //��Ϊ����ֻ��ȡһ����û��Ҫȥ�����ˡ�
	        if(rs.next()){
	            //��ȡ���ı��ֶ�
	            InputStream in= rs.getAsciiStream(2);
	            BufferedReader br = new BufferedReader(new InputStreamReader(in));

	            //�������IO��֪ʶ��
	            String line="";
	            while( (line=br.readLine())!=null ){
	                System.out.println(line);
	                //�������ֱ������ˣ�����������������ļ��е�,�����Ͼ������
	            }
	        }
	    }
	 
	 /**
	  * 
	  * @Title: writeImg   
	  * @Description:    д��ͼƬ
	  * @param: @throws SQLException      
	  * @return: void      
	  * @throws
	  */
	 public void writeImg() throws SQLException{
	        Connection con = ConnFactory.getConnection();
	        String sql = "insert into node values(?,?)";

	        PreparedStatement pst = con.prepareStatement(sql);
	        pst.setInt(1, 4);
	        InputStream in = BlobExample.class.getClassLoader().getResourceAsStream("1.png");
	        pst.setBinaryStream(2, in);
	        pst.executeUpdate();
	        con.close();
	    }
	 /**
	  * 
	  * @Title: redaImg   
	  * @Description:��ȡͼƬ   
	  * @param: @throws SQLException
	  * @param: @throws IOException      
	  * @return: void      
	  * @throws
	  */
	 public void redaImg() throws SQLException, IOException{
	        Connection con = ConnFactory.getConnection();

	        String sql = "select * from node where id=4";

	        PreparedStatement pst = con.prepareStatement(sql);
	        ResultSet rs = pst.executeQuery();
	        if(rs.next()){

	            InputStream in = rs.getAsciiStream(2);
	            FileOutputStream out = new FileOutputStream(new File("D:/a.jpg"));

	            byte[] buf = new byte[1024];
	            int len=0;
	            while( (len=in.read(buf))!=-1 ){
	                out.write(buf, 0, len);
	            }
	            in.close();
	            out.close();
	        }
	        con.close();
	    }
	 public static void main(String[] args) throws Exception {
		 BlobExample blobExample = new BlobExample();
		 blobExample.redaImg();
	}
}
