package com.slp.condition;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author sanglp
 * @create 2017-12-26 14:15
 * @desc Condition中的api示例
 * 使用Condition创建了一个读线程、一个写线程
 * 有多个线程往里面存数据和从里面取数据，其缓存队列(先进先出后进后出)能缓存的最大数值是100，多个线程间是互斥的，当缓存队列中存储的值达到100时，将写线程阻塞，并唤醒读线程，当缓存队列中存储的值为0时，将读线程阻塞，并唤醒写线程，这也是ArrayBlockingQueue的内部实现。下面分析一下代码的执行过程：
 * 1. 一个写线程执行，调用put方法；
 * 2. 判断count是否为100，显然没有100；
 * 3. 继续执行，存入值；
 * 4. 判断当前写入的索引位置++后，是否和100相等，相等将写入索引值变为0，并将count+1；
 * 5. 仅唤醒读线程阻塞队列中的一个；
 * 6. 一个读线程执行，调用take方法；
 * 7. ……
 * 8. 仅唤醒写线程阻塞队列中的一个。
 * 这就是多个Condition的强大之处，假设缓存队列中已经存满，那么阻塞的肯定是写线程，唤醒的肯定是读线程，相反，阻塞的肯定是读线程，唤醒的肯定是写线程，那么假设只有一个Condition会有什么效果呢，缓存队列中已经存满，这个Lock不知道唤醒的是读线程还是写线程了，如果唤醒的是读线程，皆大欢喜，如果唤醒的是写线程，那么线程刚被唤醒，又被阻塞了，这时又去唤醒，这样就浪费了很多时间。
 **/
public class ApiDemo {
    /**
     * 锁对象
     */
    final Lock lock = new ReentrantLock();
    /**
     * 写线程条件
     */
    final Condition notFull  = lock.newCondition();
    /**
     * 读线程条件
     */
    final Condition notEmpty = lock.newCondition();
    /**
     * 缓存队列
     */
    final Object[] items = new Object[100];
    /**
     * 写索引
     */
    int putptr,
    /**
     * 读索引
     */
     takeptr,
    /**
     * 队列中存在的数据个数
     */
     count;

    public void put(Object x) throws InterruptedException {
        lock.lock();
        try {
            /**
             * 如果队列满了
             */
            while (count == items.length){
            /**
             * 阻塞写线程
             */
                notFull.await();}
            /**
             * 赋值
             */
            items[putptr] = x;
            /**
             * 如果写索引写到队列的最后一个位置了，那么置为0
             */
            if (++putptr == items.length) {
                putptr = 0;}
            ++count;//个数++
            notEmpty.signal();//唤醒读线程
        } finally {
            lock.unlock();
        }
    }

    public Object take() throws InterruptedException {
        lock.lock();
        try {
            /**
             * 如果队列为空
             */
            while (count == 0) {
                /**
                 * 阻塞读线程
                 */
                notEmpty.await();
            }
            /**
             * 取值
             */
            Object x = items[takeptr];
            if (++takeptr == items.length) {
                /**
                 * 如果读索引读到队列的最后一个位置了，那么置为0
                 */
                takeptr = 0;}
            --count;//个数--
            notFull.signal();//唤醒写线程
            return x;
        } finally {
            lock.unlock();
        }
    }
}
