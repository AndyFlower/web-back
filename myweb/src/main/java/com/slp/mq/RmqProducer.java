package com.slp.mq;

import org.springframework.amqp.rabbit.core.RabbitTemplate;

import javax.annotation.Resource;

/**
 * @author sanglp
 * @create 2018-02-06 14:19
 * @desc 生产者
 **/
public class RmqProducer {

    @Resource
    private RabbitTemplate rabbitTemplate;

    /**
     * 发送信息
     * @param msg
     */
    public void sendMessage(RabbitMessage msg){
        System.out.println(rabbitTemplate.getConnectionFactory().getHost());
        System.out.println(rabbitTemplate.getConnectionFactory().getPort());
        System.out.println("msg"+msg);
        rabbitTemplate.convertAndSend(msg.getExchange(),msg.getRoutekey(),msg);
        System.out.println("发送完成");

    }
}
