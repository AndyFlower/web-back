package com.slp.task;

import org.apache.log4j.Logger;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * @author sanglp
 * @create 2018-02-02 11:23
 * @desc 设置多个定时任务示例
 **/

@Component
public class DemoTask2 {
    private Logger log = Logger.getLogger(DemoTask2.class);

        int i=0 ;
        int j=0;
        int k=0;


    /**
     * @Scheduled可以作为一个触发源添加到一个方法中，以一个固定的时间延迟调用一次执行，这个周期是以上一个调度任务的完成时间为基准，在上一个任务完成之后5s后再次执行
     */
    @Scheduled(fixedDelay = 50000000)//@Scheduled可以作为一个触发源添加到一个方法中，以一个固定的时间延迟调用一次执行，这个周期是以上一个调度任务的完成时间为基准，在上一个任务完成之后5s后再次执行
    public void demo1(){
        log.info("定时任务1开始执行啦！！！");
        long begin = System.currentTimeMillis();
        i=i+1;
        System.out.println("我是小i我要长大了"+i);

        long end = System.currentTimeMillis();

        log.info("定时任务1执行结束，花费时间为"+(end-begin)+"毫秒");
    }

    /**
     * 以一个固定延迟时间5秒中调用一次执行，这个周期是以上一个任务开始时间为基准，从上一个任务开始执行后5s再次调用
     */
    @Scheduled(fixedRate  = 50000000)
    public void demo2(){
        log.info("定时任务2开始执行啦！！！");
        long begin = System.currentTimeMillis();
        j=j+1;
        System.out.println("我是小j我要长大了"+j);

        long end = System.currentTimeMillis();

        log.info("定时任务2执行结束，花费时间为"+(end-begin)+"毫秒");
    }

    /**
     * 在特定的时间执行，使用cron表达式
     */
    @Scheduled(cron = "0 34 11 * * ?")
    public void demok(){
        log.info("定时任务3开始执行啦！！！");
        long begin = System.currentTimeMillis();
        k=k+1;
        System.out.println("我是小k我要长大了"+k);

        long end = System.currentTimeMillis();

        log.info("定时任务3执行结束，花费时间为"+(end-begin)+"毫秒");
    }
}
