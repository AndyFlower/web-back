package com.slp;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
public class ConnFactory {
	private static Connection con = null;

    //��̬��
    static{

        try {
            //��ȡ�����ļ�
            Properties p = new Properties();
            p.load(ConnFactory.class.getClassLoader().getResourceAsStream("jdbc.properties"));

            String drive = p.getProperty("driver");
            String url = p.getProperty("url");
            String user = p.getProperty("username");
            String password = p.getProperty("password");

            Class.forName(drive);

            con = DriverManager.getConnection(url, user, password);



        } catch (IOException e) {
            throw new RuntimeException("�����ļ������쳣", e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Drive.Class�ļ������쳣", e);
        } catch (SQLException e) {
            throw new RuntimeException("���ݿ���ʳ����쳣", e);
        }
    }

    public static Connection getConnection(){
        return con;
    }

    public static void main(String[] args) {
        System.out.println(getConnection());
    }

}
