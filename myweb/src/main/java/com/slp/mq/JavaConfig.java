package com.slp.mq;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.TopicExchange;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitAdmin;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.listener.SimpleMessageListenerContainer;
import org.springframework.amqp.rabbit.listener.adapter.MessageListenerAdapter;
import org.springframework.amqp.support.converter.JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;

/**
 * @author sanglp
 * @create 2018-02-08 8:47
 * @desc 以java代码的方式配置RabbitMq
 **/
public class JavaConfig {
    public ConnectionFactory rabbitConnectionFactory() {
        CachingConnectionFactory connectionFactory = new CachingConnectionFactory("192.168.181.201");
        connectionFactory.setUsername("admin");
        connectionFactory.setPassword("admin");
        return connectionFactory;
    }

    public RabbitTemplate rabbitTemplate() {
        RabbitTemplate template = new RabbitTemplate(rabbitConnectionFactory());
        template.setMessageConverter(jsonMessageConverter());
        return template;
    }

    public MessageConverter jsonMessageConverter() {
        return new JsonMessageConverter();
    }

    TopicExchange paySuccessExchange() {
        return new TopicExchange("pay-success-exchange");
    }

    Queue queue() {
        return new Queue("pay-success-queue", false);
    }

    Binding binding(Queue queue, TopicExchange exchange) {
        return BindingBuilder.bind(queue).to(exchange).with("pay-success");
    }

    RabbitAdmin admin() {
        RabbitAdmin admin = new RabbitAdmin(rabbitConnectionFactory());
        /**
         *  这样即使有关rabbitmq的bean初始化失败整个web应用还能正常启动
         *  默认情况下，当出现异常时，RabbitAdmin会立即停止所有声明的处理过程，这就会可能导致一些问题-如监听器容器会初始化失败，因另外的队列没有声明，从而web应用启动失败
         */
        admin.setIgnoreDeclarationExceptions(true);
        return admin;
    }

    SimpleMessageListenerContainer container(ConnectionFactory rabbitConnectionFactory,
                                             MessageListenerAdapter listenerAdapter) {
        SimpleMessageListenerContainer container = new SimpleMessageListenerContainer();
        container.setConnectionFactory(rabbitConnectionFactory);
        container.setQueueNames("pay-success-queue");
        container.setMessageListener(listenerAdapter);
        container.setMessageConverter(jsonMessageConverter());
        return container;
    }

    MessageListenerAdapter listenerAdapter(PaySuccessReceiver receiver) {
        MessageListenerAdapter m = new MessageListenerAdapter(receiver, "handleMessage");
        m.setMessageConverter(jsonMessageConverter());
        return m;
    }

    public PaySuccessReceiver receiver() {
        return new PaySuccessReceiver();
    }
}
