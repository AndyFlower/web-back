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
 * @Description:操作大文本数据 
 * @author: liping.sang
 * @date:   2017年10月12日 上午11:32:14   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 */
public class BlobExample {
	/**
	 * 
	 * @Title: writeText   
	 * @Description: 写入文本数据   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	public  void writeText() throws Exception {
		Connection con = ConnFactory.getConnection();
		String sql = "insert into node values(?,?)";

		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, 2);

		// this.getClass().getClassLoader().getResource("").getPath()拿到的是本项目.class的根目录的绝对路径(bin/)
		InputStream in = this.getClass().getClassLoader().getResourceAsStream("jdbc.properties");
		System.out.println(this.getClass().getClassLoader().getResource("").getPath());
		// 一个小知识点，因为我们是拿到的bin目录下的文件，src目录下的.java文件会被myeclipse编译成.class文件放入对应的bin目录下。
		// 我们直接在src文件下建立的.java文件是无法被myeclipse原样拷贝到bin目录下的。如果需要读入.java文件，就需要直接去把.java文件放入对应的bin目录下。
		pst.setAsciiStream(2, in);

		pst.executeUpdate();
		con.close();

	}
	
	/**
	 * 
	 * @Title: readText   
	 * @Description: 读取大文本数据   
	 * @param: @throws Exception      
	 * @return: void      
	 * @throws
	 */
	 public static void readText() throws Exception {
	        Connection con = ConnFactory.getConnection();
	        String sql = "select * from node where id=1";
	        PreparedStatement pst = con.prepareCall(sql);
	        ResultSet rs = pst.executeQuery();
	        //因为我们只读取一个，没必要去遍历了。
	        if(rs.next()){
	            //读取大文本字段
	            InputStream in= rs.getAsciiStream(2);
	            BufferedReader br = new BufferedReader(new InputStreamReader(in));

	            //这里就是IO的知识了
	            String line="";
	            while( (line=br.readLine())!=null ){
	                System.out.println(line);
	                //我这里就直接输出了，你可以输出到另外的文件中的,本质上就是流嘛。
	            }
	        }
	    }
	 
	 /**
	  * 
	  * @Title: writeImg   
	  * @Description:    写入图片
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
	  * @Description:读取图片   
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
