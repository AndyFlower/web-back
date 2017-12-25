package com.slp;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.PostMethod;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author sanglp
 * @create 2017-12-05 14:08
 * @desc 测试
 **/
public class Client {
    @Test
    public void test() {
        HttpClient httpClient = new HttpClient();
        new Thread(new Sender(httpClient)).start();
        new Thread(new Sender(httpClient)).start();
        new Thread(new Sender(httpClient)).start();

    }

}

class Sender implements Runnable {
    public static AtomicInteger count = new AtomicInteger(0);
    HttpClient httpClient;

    public Sender(HttpClient client) {
        httpClient = client;
    }

    public void run() {
        try {
            System.out.println(Thread.currentThread().getName()+"---Send message-"+count.getAndIncrement());
            PostMethod post = new PostMethod("http://127.0.0.1:8081/SendMessage");
            post.addParameter("msg", "Hello world!");
            httpClient.executeMethod(post);
            System.out.println(Thread.currentThread().getName()+"---Send message Success-"+count.getAndIncrement());

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
