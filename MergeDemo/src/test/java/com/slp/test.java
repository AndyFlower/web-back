package com.slp;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * @author sanglp
 * @create 2018-01-03 10:02
 * @desc 测试日志
 **/
public class test {

    private static RedisTemplate redisTemplate;

    private static final Log logger = LogFactory.getLog(test.class);
    public static void main(String[] args){
        logger.info("test日志输出");
        logger.debug("test日志输出");
        logger.fatal("test日志输出");
        logger.error("test日志输出");
        redisTemplate.opsForValue().set("1", "2");
    }
}
