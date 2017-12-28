package com.slp.countDownLatchTest;

import java.util.concurrent.CountDownLatch;

/**
 * @author sanglp
 * @create 2017-12-26 17:04
 * @desc DatabaseHealthChecker
 **/
public class DatabaseHealthChecker extends BaseHealthChecker {
    public DatabaseHealthChecker(CountDownLatch latch) {
        super(latch, "Database Service");
    }

    @Override
    public void verifyService() {
        System.out.println("Checking " + this.getServiceName());
        try
        {
            Thread.sleep(6000);
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }
        System.out.println(this.getServiceName() + " is UP");
    }
}
