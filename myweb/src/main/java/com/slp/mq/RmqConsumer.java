package com.slp.mq;

/**
 * @author sanglp
 * @create 2018-02-06 14:23
 * @desc 消费者
 **/
public class RmqConsumer {

    public void rmqProducerMessage(Object object){
        System.out.println("消费前");
        RabbitMessage rabbitMessage = (RabbitMessage) object;
        System.out.println(rabbitMessage.getExchange());
        System.out.println(rabbitMessage.getRoutekey());
        System.out.println(rabbitMessage.getParams().toString());
    }
}
