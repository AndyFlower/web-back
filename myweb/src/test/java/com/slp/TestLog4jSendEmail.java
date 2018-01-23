package com.slp;

import org.apache.log4j.Logger;

/**
 * @author sanglp
 * @create 2018-01-22 16:02
 * @desc 测试log4j发送邮件
 **/
public class TestLog4jSendEmail {
    static Logger logger = Logger.getLogger(TestLog4jSendEmail.class);
  public static void main(String[] args){
         logger.error("test");
  }
}
