package com.slp.countDownLatchTest;

/**
 * @author sanglp
 * @create 2017-12-26 17:05
 * @desc 主启动类
 **/
public class Main {
    public static void main(String[] args){
        boolean result = false;
        try {
            result = ApplicationStartupUtil.checkExternalServices();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("External services validation completed !! Result was"+result);
    }
}
