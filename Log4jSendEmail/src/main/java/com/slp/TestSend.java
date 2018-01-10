package com.slp;/**
 * Created by sangliping on 2018/1/10.
 */

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

/**
 * @author sanglp
 * @create 2018-01-10 17:15
 * @desc 测试发送
 **/
public class TestSend {
    public static void main(String args[]) throws InterruptedException {
        // 读取Log4j.properties配置文件
        PropertyConfigurator.configure(TestSend.class.getResource("/log4j.properties"));
        Logger logger = Logger.getLogger(TestSend.class);
        int i = 0;
        while (i < 6) {
            i += 1;
            logger.error("Do you received message?");
        }

    }
}
