package com.slp.util;

import java.util.UUID;

/**
 * @author sanglp
 * @create 2018-01-25 14:45
 * @desc 生成UUID
 **/
public class UUIDUtil {
    /**
     * 生成UUID
     * @return
     */
    public static String generatorUUID(){
        String uuid = UUID.randomUUID().toString();
        //去掉“-”符号
        return uuid.replaceAll("-", "");
    }
}
