package com.slp;

import org.apache.log4j.Logger;
/**
 * @author sanglp
 * @create 2018-01-10 17:11
 * @desc log4j发送邮件
 **/
public class TestLog4jSendMail {
    static Logger logger = Logger.getLogger(TestLog4jSendMail.class);
    //SMTPAppender appender = new DefineSMTPAppender();

    public TestLog4jSendMail() {
        try {
            /*appender.setSMTPUsername("yin_jw123@126.com");
            appender.setSMTPPassword("yinjianwei");
            appender.setTo("yin_jw456@126.com");
            appender.setFrom("yin_jw123@126.com");
            // SMTP服务器 smtp.163.com
            appender.setSMTPHost("smtp.126.com");
            appender.setLocationInfo(true);
            appender.setSubject("Test Mail From Log4J");
            appender.setLayout(new DefineLayOut());
            appender.activateOptions();
            logger.addAppender(appender);*/
            logger.error("测试");
        } catch (Exception e) {
            e.printStackTrace();
            logger.info("Printing ERROR Statements", e);
        }
    }

    public static void main(String args[]) {
        new TestLog4jSendMail();
    }
}
