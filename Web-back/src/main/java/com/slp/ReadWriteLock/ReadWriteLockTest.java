package com.slp.ReadWriteLock;

import java.util.Random;

/**
 * @author sanglp
 * @create 2017-12-25 16:41
 * @desc 读写锁
 **/
public class ReadWriteLockTest {
    public static void main(String[] args){
        final Data data = new Data();
        for (int i=0;i<3;i++){
            new Thread(new Runnable() {
                public void run() {
                  for (int j=0;j<5;j++){
                      data.setData(new Random().nextInt(30));
                  }
                }
            }).start();
        }

        for (int i=0;i<3;i++){
            new Thread(new Runnable() {
                public void run() {
                    for (int j=0;j<5;j++){
                        data.setData(new Random().nextInt(30));
                    }
                }
            }).start();
        }
    }
}
