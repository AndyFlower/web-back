package com.slp.pool;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author sanglp
 * @create 2017-12-26 10:34
 * @desc FixedThreadPool测试类
 * 创建了一个固定大小的线程池，容量为3，然后循环执行了4个任务，
 * 由输出结果可以看到，前3个任务首先执行完，然后空闲下来的线程去执行第4个任务，
 * 在FixedThreadPool中，有一个固定大小的池，如果当前需要执行的任务超过了池大小，
 * 那么多于的任务等待状态，直到有空闲下来的线程执行任务，而当执行的任务小于池大小，
 * 空闲的线程也不会去销毁
 **/
public class FixedThreadPoolTest {
    /**
     * 第1次任务的第1次执行
     * 第3次任务的第1次执行
     * 第2次任务的第1次执行
     * 第2次任务的第2次执行
     * 第3次任务的第2次执行
     * 第1次任务的第2次执行
     * 第3次任务的第3次执行
     * 第2次任务的第3次执行
     * 第1次任务的第3次执行
     * 第3次任务的第4次执行
     * 第1次任务的第4次执行
     * 第2次任务的第4次执行
     * 第4次任务的第1次执行
     * 第4次任务的第2次执行
     * 第4次任务的第3次执行
     * 第4次任务的第4次执行
     * @param args
     */
    public static void main(String[] args){
        ExecutorService threadPool = Executors.newFixedThreadPool(3);
        for(int i = 1; i<5;i++){
            final int taskID = i ;
            threadPool.execute(new Runnable() {
                public void run() {
                    for(int i=1;i<5;i++){
                        try {
                            //测试效果 加时间
                            Thread.sleep(20);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        System.out.println("第"+taskID+"次任务的第"+i+"次执行");
                    }
                }
            });
        }
        //任务执行完成，关闭线程池
        threadPool.shutdown();
    }
}
