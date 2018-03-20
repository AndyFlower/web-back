package com.slp;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

/**
 * @author sanglp
 * @create 2018-02-02 11:29
 * @desc 定时任务测试类
 **/
public class TaskTest {
    @Before
    public void setUp() throws Exception {
        //ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("D:/web-back/web-back/myweb/web/WEB-INF/applicationContext.xml");
        //context.start();

        String path="web/WEB-INF/applicationContext.xml";
        ApplicationContext context = new FileSystemXmlApplicationContext(path);
    }
    @Test
    public void testTask() throws InterruptedException {
        System.out.println("开始执行了...");
        Thread.sleep(1000000);
        System.out.println("结束执行了...");
    }
}
