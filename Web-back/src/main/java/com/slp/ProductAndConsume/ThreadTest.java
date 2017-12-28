package com.slp.ProductAndConsume;/**
 * Created by sangliping on 2017/12/26.
 */

/**
 * @author sanglp
 * @create 2017-12-26 9:30
 * @desc 子线程循环10次，主线程循环100次，如此循环100次
 * 在调用wait方法时，都是用while判断条件的，而不是if，在wait方法说明中，也推荐使用while，因为在某些特定的情况下，线程有可能被假唤醒，使用while会循环检测更稳妥。wait和notify方法必须工作于synchronized内部，且这两个方法只能由锁对象来调用。
 **/
public class ThreadTest {

    public static void main(String[] args){
        final Business business = new Business();
        new Thread(new Runnable() {
            public void run() {
                threadExecute(business,"sub");
            }
        }).start();
        threadExecute(business,"main");
    }

    public static void threadExecute(Business business,String threadType){
        //循环100次
        for (int i = 0 ; i < 100 ; i++){
            try {
            if ("main".equals(threadType)){
                business.main(i);
            }else {
                business.sub(i);
            }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
class Business{
    private boolean bool = true;
    public synchronized void main(int loop) throws InterruptedException {
        while (bool){
            this.wait();
        }
        //主线程循环100次
        for (int i = 0 ; i < 100 ; i++){
            System.out.println("main thread seq of"+i+",loop of"+loop);
        }
        bool = true;
        this.notify();
    }

    public synchronized void sub(int loop) throws InterruptedException {
        while (!bool){
            this.wait();
        }
        //子线程循环10次
        for (int i = 0 ; i < 10 ; i++){
            System.out.println("sub thread seq of"+i+",loop of"+loop);
        }
        bool=false;
        this.notify();
    }
}
