package com.slp.Synchronized;

/**
 * @author sanglp
 * @create 2017-12-25 15:51
 * @desc Synchronized测试用例
 * 一个线程执行互斥代码的过程：
 * 1、获得同步锁
 * 2、清空工作内存
 * 3、从主内存拷贝对象副本到工作内存
 * 4、执行
 * 5、刷新主内存数据
 * 6、释放同步锁
 * 所以synchronized既保证了多线程的并发有序性，又保证了多线程的内存可见性
 **/
public class TraditionalThreadSynchronized {
    public static void main(String[] args){
        final Output output = new Output();
        new Thread(){
            @Override
            public void run(){
                output.output("AndyAndyAndyAndyAndyAndyAndy");
            }
        }.start();
        new Thread(){
            @Override
            public void run(){
                output.output("LindaLindaLindaLindaLindaLinda");
            }
        }.start();
    }
}
