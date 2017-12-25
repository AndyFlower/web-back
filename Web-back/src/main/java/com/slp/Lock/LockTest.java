package com.slp.Lock;

/**
 * @author sanglp
 * @create 2017-12-25 15:33
 * @desc 并发Lock测试
 * Lock 实现提供了比使用synchronized 方法和语句可获得的更广泛的锁定操作，它能以更优雅的方式处理线程同步问题
 **/
public class LockTest {
    public static void main(String[] args){
        final Output output = new Output();
        new Thread(){
            @Override
            public  void run(){
                output.output("Andy");
            }
        }.start();

        new Thread(){
            @Override
            public  void run(){
                output.output("Linda");
            }
        }.start();
    }
}
