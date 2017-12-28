package com.slp.timer;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/**
 * @author sanglp
 * @create 2017-12-26 10:18
 * @desc TimerTask复杂示例
 **/
public class TimerTask2 {

    static class MyTimerTask1 extends TimerTask{
        public void run() {
            System.out.println("爆炸！！！");
            new Timer().schedule(new MyTimerTask2(),2000);
        }
    }

    static class MyTimerTask2 extends TimerTask{
        public void run() {
            System.out.println("爆炸！！！");
            new Timer().schedule(new MyTimerTask1(),3000);
        }
    }

    /**
     * 46
     * 47
     * 爆炸！！！
     * 48
     * 49
     * 50
     * 爆炸！！！
     * 51
     * 52
     * 爆炸！！！
     * 53
     * 54
     * 55
     * 爆炸！！！
     * @param args
     */
    public static void main(String[] args){
        Timer timer = new Timer();
        timer.schedule(new MyTimerTask2(),2000);
        while (true){
            System.out.println(new Date().getSeconds());
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
