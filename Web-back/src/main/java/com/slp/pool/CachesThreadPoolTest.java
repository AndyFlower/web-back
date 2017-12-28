package com.slp.pool;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author sanglp
 * @create 2017-12-26 10:51
 * @desc CacheThreadPool测试示例
 * 4个任务是交替执行的，CachedThreadPool会创建一个缓存区，
 * 将初始化的线程缓存起来，如果线程有可用的，就使用之前创建好的线程，
 * 如果没有可用的，就新创建线程，终止并且从缓存中移除已有60秒未被使用的线程
 **/
public class CachesThreadPoolTest {
    /**
     * 第3次任务的第1次执行
     * 第2次任务的第1次执行
     * 第1次任务的第1次执行
     * 第4次任务的第1次执行
     * 第1次任务的第2次执行
     * 第2次任务的第2次执行
     * 第3次任务的第2次执行
     * 第4次任务的第2次执行
     * 第3次任务的第3次执行
     * 第2次任务的第3次执行
     * 第1次任务的第3次执行
     * 第4次任务的第3次执行
     * 第3次任务的第4次执行
     * 第2次任务的第4次执行
     * 第1次任务的第4次执行
     * 第4次任务的第4次执行
     * @param args
     */
    public static void main(String[] args){
        ExecutorService threadPool = Executors.newCachedThreadPool();
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
