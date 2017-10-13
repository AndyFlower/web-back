package com.slp.��ȡԪ����д��excel;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class MetaDataDemo {
	 // ��Ԫ��Ϣ1��ͨ��con���DatabaseMetaData(���ݿ�Ԫ��Ϣ)---���ݿ�������Ϣ�����ݿ���������
	public static void databaseMetadataDemo() throws Exception {
        // ��ȡ���ݿ��Ԫ��Ϣ
        Connection con = ConnsUtil�Ĵ���ģʽ.getConn();
        // ********�ؼ�
        DatabaseMetaData dm = con.getMetaData();

        // ��ȡ�� JDBC ������������ơ�
        System.out.println(dm.getDriverName());
        // ��ȡ�� JDBC ������������汾�š�
        System.out.println(dm.getDriverMajorVersion());
        // ��ȡ�ڴ����ݿ�����ͬһʱ���ڿɴ��ڿ���״̬������������--���ؽ��Ϊ����ζ��û�����ƻ�������δ֪��
        System.out.println(dm.getMaxStatements());
        // ��ȡ������������� JDBC �汾�š�
        System.out.println(dm.getJDBCMajorVersion());
        // ���кܶ෽��������ȥAPI�Լ���
        System.out.println("=========================");

        // �����Ƕ�̬��ȡ���ݿ���

        ResultSet rs = dm.getCatalogs();
        // �൱��ִ��:show databases;

        while (rs.next()) {
            System.out.println(rs.getString(1));
            // ����Ԫ���ݲ���������ݿ���
        }

        // ֪�����ݿ������
        con.createStatement().execute("use dev");
        // ��̬��ȡ����

        // ���԰Ѳ���nullд�ɡ�%o%������ģ����ѯ
        ResultSet rs2 = dm.getTables("root", "123456", null,
                new String[] { "TABLE" });

        while (rs2.next()) {
            System.out.println(rs2.getString("TABLE_NAME"));
            // ����Ԫ���ݲ�������ñ���
        }
    }
	
	// ��Ԫ��Ϣ2��ͨ��rs���ResultSetMetaData(�����Ԫ��Ϣ)---��ͷ(ÿ���ֶ���)���������������
    // ��֪�����ݿ����ͱ���������£��ѱ�ͷ�ͱ����ݶ���ѯ������
    // վ�ڽ�����ĸ߶�---Ҳ���Ǳ��
    public static void resultSetMetaDataDemo() throws Exception{
        Connection con1 = ConnsUtil�Ĵ���ģʽ.getConn();
        Statement st = con1.createStatement();
        //����ǿ���ѯ,sql:�����ݿ���.������----select * from ���ݿ�.����
        String sql = "select * from users";//���ǵ�������dev���ݿ�ģ�����dev���ݿ�ֱ��д�����Ϳ���
        ResultSet rs = st.executeQuery(sql);

        //�������Ԫ��Ϣ
        ResultSetMetaData rsmd = rs.getMetaData();
        int columns = rsmd.getColumnCount();
        //��ñ�������

        //����������ݱ�(������ͷ)
        //��ͷ
        for(int i=0;i<columns;i++){
            String columnName = rsmd.getColumnName(i+1);
            System.out.print(columnName+"\t");
        }
        System.out.println();
        System.out.println("------------------------");
        //������
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
