package com.slp.pool;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * @author sanglp
 * @create 2017-12-26 11:26
 * @desc ScheduleThreadPool测试示例
 **/
public class ScheduledThreadPoolTest {
    public static void main(String[] args){
        ScheduledExecutorService schedulePool = Executors.newScheduledThreadPool(1);
        //5秒后执行任务
        schedulePool.schedule(new Runnable() {
            public void run() {
                System.out.println("爆炸");
            }
        },5, TimeUnit.SECONDS);
        //5秒后执行任务，以后每2秒执行一次
        schedulePool.scheduleAtFixedRate(new Runnable() {
            public void run() {
                System.out.println("爆炸");
            }
        },5,2,TimeUnit.SECONDS);
    }
}
