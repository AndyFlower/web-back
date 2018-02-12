package com.slp.mq;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageListener;

/**
 * @author sanglp
 * @create 2018-02-07 17:21
 * @desc rabbitmq 自定义监听类
 **/
public class RabbitMqConsumerListener implements MessageListener {
    private Logger logger= LoggerFactory.getLogger(RabbitMqConsumerListener.class);

    @Override
    public void onMessage(Message message) {
        String messageBody = new String(message.getBody());
        System.out.println(" [x] Received '" + messageBody + "'");
    }
}
