package com.slp.pool;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author sanglp
 * @create 2017-12-26 11:21
 * @desc SingleThreadExecutor测试示例
 * 4个任务是顺序执行的，SingleThreadExecutor得到的是一个单个的线程，
 * 这个线程会保证你的任务执行完成，如果当前线程意外终止，会创建一个新
 * 线程继续执行任务，这和我们直接创建线程不同，也和newFixedThreadPool(1)不同。
 **/
public class SingleThreadExecutorTest {
    /**
     * 第1次任务的第1次执行
     * 第1次任务的第2次执行
     * 第1次任务的第3次执行
     * 第1次任务的第4次执行
     * 第2次任务的第1次执行
     * 第2次任务的第2次执行
     * 第2次任务的第3次执行
     * 第2次任务的第4次执行
     * 第3次任务的第1次执行
     * 第3次任务的第2次执行
     * 第3次任务的第3次执行
     * 第3次任务的第4次执行
     * 第4次任务的第1次执行
     * 第4次任务的第2次执行
     * 第4次任务的第3次执行
     * 第4次任务的第4次执行
     * @param args
     */
    public static void main(String[] args){
        ExecutorService threadPool = Executors.newSingleThreadExecutor();
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
