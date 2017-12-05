package com.slp.activemq;

/**
 * @author sanglp
 * @create 2017-12-05 11:31
 * @desc 消费者测试
 **/
public class TestConcumer {
    public static void main(String[] args){
        Consumer consumer = new Consumer();
        consumer.init();
        TestConcumer testConsumer = new TestConcumer();
        new Thread(testConsumer.new ConsumerMq(consumer)).start();
        new Thread(testConsumer.new ConsumerMq(consumer)).start();
        new Thread(testConsumer.new ConsumerMq(consumer)).start();
        new Thread(testConsumer.new ConsumerMq(consumer)).start();
    }

    private class ConsumerMq implements Runnable{
        Consumer consumer;
        public ConsumerMq(Consumer consumer){
            this.consumer = consumer;
        }


        public void run() {
            while(true){
                try {
                    consumer.getMessage("Jaycekon-MQ");
                    Thread.sleep(10000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
