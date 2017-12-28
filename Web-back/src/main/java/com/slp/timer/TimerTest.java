package com.slp.timer;

import java.util.Timer;
import java.util.TimerTask;

/**
 * @author sanglp
 * @create 2017-12-26 10:10
 * @desc Timer测试类
 * 一个Timer可以调度任意多个TimerTask，它会将TimerTask存储在一个队列中，顺序调度，如果想两个TimerTask并发执行，则需要创建两个Timer。
 **/
public class TimerTest {
    static class MyTimerTask1 extends TimerTask{
        public void run() {
            System.out.println("爆炸！！！");
        }
    }
    public static void main(String[] args){
        Timer timer = new Timer();
        // 两秒后启动任务,schedule是Timer调度任务的方法，Timer重构了四个schedule方法
        timer.schedule(new MyTimerTask1(), 2000);
    }
}
