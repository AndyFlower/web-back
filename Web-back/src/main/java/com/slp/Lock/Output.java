package com.slp.Lock;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author sanglp
 * @create 2017-12-25 15:37
 * @desc 测试用类
 **/
public class Output {
    //锁对象
    private Lock lock = new ReentrantLock();

    public void output(String name){
        //得到锁
        lock.lock();
        try {
            for (int i=0;i<name.length();i++) {
                System.out.println(name.charAt(i));
            }
        }finally {
            //释放锁
            lock.unlock();
        }

    }
}
