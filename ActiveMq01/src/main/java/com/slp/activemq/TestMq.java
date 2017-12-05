package com.slp.activemq;

/**
 * @author sanglp
 * @create 2017-12-05 11:31
 * @desc mq测试
 **/
public class TestMq {
    public static void main(String[] args){
        Producer producer = new Producer();
        producer.init();
        TestMq testMq = new TestMq();
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        //Thread 1
        new Thread(testMq.new ProducorMq(producer)).start();
        //Thread 2
        new Thread(testMq.new ProducorMq(producer)).start();
        //Thread 3
        new Thread(testMq.new ProducorMq(producer)).start();
        //Thread 4
        new Thread(testMq.new ProducorMq(producer)).start();
        //Thread 5
        new Thread(testMq.new ProducorMq(producer)).start();
    }


    private  class  ProducorMq implements Runnable{
        Producer producer;
        public ProducorMq(Producer producer){
            this.producer = producer;
        }
        public void run() {
            while(true){
                try {
                    producer.sendMessage("Jaycekon-MQ");
                    Thread.sleep(10000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
