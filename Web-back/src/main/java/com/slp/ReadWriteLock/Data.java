package com.slp.ReadWriteLock;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * @author sanglp
 * @create 2017-12-25 16:41
 * @desc 共享数据
 **/
public class Data {
    /**
     * 共享数据
     */
    private int data ;

    /**
     * Thread-0准备写入数据
     Thread-1准备写入数据
     Thread-2准备写入数据
     Thread-3准备写入数据
     Thread-4准备写入数据
     Thread-0写入11
     Thread-1写入11
     Thread-1准备写入数据
     Thread-0准备写入数据
     Thread-5准备写入数据
     Thread-2写入11
     Thread-2准备写入数据
     Thread-4写入22
     Thread-4准备写入数据
     Thread-3写入21
     Thread-3准备写入数据
     Thread-0写入11
     Thread-0准备写入数据
     Thread-1写入1
     Thread-1准备写入数据
     Thread-5写入12
     Thread-5准备写入数据
     Thread-3写入11
     Thread-3准备写入数据
     Thread-4写入6
     Thread-4准备写入数据
     Thread-2写入16
     Thread-2准备写入数据
     Thread-5写入8
     Thread-5准备写入数据
     Thread-1写入27
     Thread-1准备写入数据
     Thread-0写入24
     Thread-0准备写入数据
     Thread-1写入18
     Thread-1准备写入数据
     Thread-5写入10
     Thread-5准备写入数据
     Thread-2写入7
     Thread-2准备写入数据
     Thread-4写入13
     Thread-4准备写入数据
     Thread-3写入1
     Thread-3准备写入数据
     Thread-0写入22
     Thread-0准备写入数据
     Thread-3写入6
     Thread-3准备写入数据
     Thread-4写入18
     Thread-4准备写入数据
     Thread-2写入11
     Thread-2准备写入数据
     Thread-5写入21
     Thread-5准备写入数据
     Thread-1写入28
     Thread-0写入12
     Thread-5写入10
     Thread-3写入21
     Thread-4写入6
     Thread-2写入11
     */
    public void getData1()  {
        System.out.println(Thread.currentThread().getName()+"准备读取数据");
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println(Thread.currentThread().getName()+"准备"+this.data);
    }

    public void setData1(int data) {
        System.out.println(Thread.currentThread().getName()+"准备写入数据");
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.data = data;
        System.out.println(Thread.currentThread().getName()+"写入"+this.data);
    }

    /**
     * Thread-0准备写入数据
     Thread-0写入6
     Thread-5准备写入数据
     Thread-5写入19
     Thread-5准备写入数据
     Thread-5写入24
     Thread-4准备写入数据
     Thread-4写入6
     Thread-4准备写入数据
     Thread-4写入21
     Thread-4准备写入数据
     Thread-4写入13
     Thread-3准备写入数据
     Thread-3写入15
     Thread-2准备写入数据
     Thread-2写入13
     Thread-2准备写入数据
     Thread-2写入13
     Thread-2准备写入数据
     Thread-2写入21
     Thread-1准备写入数据
     Thread-1写入1
     Thread-1准备写入数据
     Thread-1写入11
     Thread-1准备写入数据
     Thread-1写入15
     Thread-1准备写入数据
     Thread-1写入2
     Thread-2准备写入数据
     Thread-2写入0
     Thread-3准备写入数据
     Thread-3写入20
     Thread-3准备写入数据
     Thread-3写入19
     Thread-3准备写入数据
     Thread-3写入26
     Thread-4准备写入数据
     Thread-4写入14
     Thread-5准备写入数据
     Thread-5写入6
     Thread-5准备写入数据
     Thread-5写入6
     Thread-5准备写入数据
     Thread-5写入7
     Thread-0准备写入数据
     Thread-0写入18
     Thread-4准备写入数据
     Thread-4写入25
     Thread-3准备写入数据
     Thread-3写入14
     Thread-2准备写入数据
     Thread-2写入28
     Thread-1准备写入数据
     Thread-1写入28
     Thread-0准备写入数据
     Thread-0写入1
     Thread-0准备写入数据
     Thread-0写入4
     Thread-0准备写入数据
     Thread-0写入10
     * @param
     * @description 写入和写入互斥，读取和写入互斥，读取和读取互斥，在set和get方法加入sychronized修饰符
     */
    public synchronized void getData2()  {
        System.out.println(Thread.currentThread().getName()+"准备读取数据");
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println(Thread.currentThread().getName()+"准备"+this.data);
    }


    public synchronized  void setData2(int data) {
        System.out.println(Thread.currentThread().getName()+"准备写入数据");
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.data = data;
        System.out.println(Thread.currentThread().getName()+"写入"+this.data);
    }



    private ReadWriteLock rwl = new ReentrantReadWriteLock();

    /**
     * Thread-0准备写入数据
     Thread-0写入10
     Thread-0准备写入数据
     Thread-0写入29
     Thread-0准备写入数据
     Thread-0写入10
     Thread-1准备写入数据
     Thread-1写入0
     Thread-1准备写入数据
     Thread-1写入1
     Thread-1准备写入数据
     Thread-1写入6
     Thread-1准备写入数据
     Thread-1写入25
     Thread-2准备写入数据
     Thread-2写入3
     Thread-2准备写入数据
     Thread-2写入21
     Thread-2准备写入数据
     Thread-2写入6
     Thread-3准备写入数据
     Thread-3写入2
     Thread-4准备写入数据
     Thread-4写入14
     Thread-5准备写入数据
     Thread-5写入1
     Thread-5准备写入数据
     Thread-5写入18
     Thread-0准备写入数据
     Thread-0写入11
     Thread-1准备写入数据
     Thread-1写入15
     Thread-2准备写入数据
     Thread-2写入23
     Thread-2准备写入数据
     Thread-2写入9
     Thread-3准备写入数据
     Thread-3写入24
     Thread-3准备写入数据
     Thread-3写入26
     Thread-4准备写入数据
     Thread-4写入13
     Thread-4准备写入数据
     Thread-4写入17
     Thread-4准备写入数据
     Thread-4写入9
     Thread-4准备写入数据
     Thread-4写入5
     Thread-5准备写入数据
     Thread-5写入28
     Thread-5准备写入数据
     Thread-5写入8
     Thread-0准备写入数据
     Thread-0写入23
     Thread-3准备写入数据
     Thread-3写入13
     Thread-3准备写入数据
     Thread-3写入29
     Thread-5准备写入数据
     Thread-5写入12
     @使用读写锁实现
     */
    public synchronized void getData()  {
        //取得写锁
        rwl.readLock().lock();
        try {


        System.out.println(Thread.currentThread().getName()+"准备读取数据");
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println(Thread.currentThread().getName()+"准备"+this.data);
    }finally {
            //释放读锁
            rwl.readLock().unlock();
        }
    }


    public   void setData(int data) {
        //取得写锁
        rwl.writeLock().lock();
        try {
            System.out.println(Thread.currentThread().getName() + "准备写入数据");
            try {
                Thread.sleep(20);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.data = data;
            System.out.println(Thread.currentThread().getName() + "写入" + this.data);
        }finally {
            //释放写锁
            rwl.writeLock().unlock();
        }
    }
}
