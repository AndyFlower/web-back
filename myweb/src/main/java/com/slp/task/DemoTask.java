package com.slp.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * @author sanglp
 * @create 2018-02-02 11:11
 * @desc 定时任务测试类
 **/
@Component
public class DemoTask {

    @Scheduled(cron = "*/1 * * * * ?")
    public void printString(){
        //System.out.println("now time is "+ (new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date()));
    }
}
