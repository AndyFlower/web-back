package com.slp.countDownLatchTest;

import java.util.concurrent.CountDownLatch;

/**
 * @author sanglp
 * @create 2017-12-26 16:59
 * @desc 实现类1
 **/
public class NetworkHealthChecker  extends BaseHealthChecker{
    public NetworkHealthChecker(CountDownLatch latch) {
        super(latch, "Network Service");
    }

    @Override
    public void verifyService() {
        System.out.println("Checking " + this.getServiceName());
        try
        {
            Thread.sleep(7000);
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }
        System.out.println(this.getServiceName() + " is UP");
    }
    }
