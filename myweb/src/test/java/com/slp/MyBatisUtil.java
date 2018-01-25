package com.slp;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

/**
 * @author sanglp
 * @create 2018-01-25 15:51
 * @desc mybatis工具
 **/
public class MyBatisUtil {
    public static SqlSessionFactory getSqlSessionFactory() throws IOException {
        // 获得环境配置文件流
        //InputStream config = MyBatisUtil.class.getClassLoader().getResourceAsReader("MyBatisCfg.xml");
       Reader reader = Resources.getResourceAsReader("MyBatisCfg.xml");
        // 创建sql会话工厂
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(reader);
        return factory;
    }

    //获得会话
    public static SqlSession getSession() throws IOException {
        return getSqlSessionFactory().openSession(true);
    }

    /**
     * 获得得sql会话
     * @param isAutoCommit 是否自动提交，如果为false则需要sqlSession.commit();rollback();
     * @return sql会话
     */
    public static SqlSession getSession(boolean isAutoCommit) throws IOException {
        return getSqlSessionFactory().openSession(isAutoCommit);
    }
}
