package com.slp.countDownLatchTest;/**
 * Created by sangliping on 2017/12/26.
 */

import java.util.concurrent.CountDownLatch;

/**
 * @author sanglp
 * @create 2017-12-26 17:03
 * @desc CacheHealthChecker
 **/
public class CacheHealthChecker extends BaseHealthChecker {
    public CacheHealthChecker(CountDownLatch latch) {
        super(latch, "Cache Service");
    }

    @Override
    public void verifyService() {
        System.out.println("Checking " + this.getServiceName());
        try
        {
            Thread.sleep(5000);
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }
        System.out.println(this.getServiceName() + " is UP");
    }
}
