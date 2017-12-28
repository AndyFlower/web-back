package com.slp.countDownLatchTest;

import java.util.concurrent.CountDownLatch;

/**
 * @author sanglp
 * @create 2017-12-26 16:55
 * @desc 负责所有特定的外部服务健康的检测 删除了重复的代码和闭锁的中心控制代码
 **/
public abstract class BaseHealthChecker implements Runnable{
    private CountDownLatch latch;
    private String serviceName;
    private boolean serviceUp;

    public BaseHealthChecker(CountDownLatch latch, String serviceName) {
        super();
        this.latch = latch;
        this.serviceName = serviceName;
        this.serviceUp=false;
    }

    public void run() {
        try {
            verifyService();
            serviceUp = true;
        } catch (Throwable t) {
            t.printStackTrace(System.err);
            serviceUp = false;
        } finally {
            if(latch != null) {
                latch.countDown();
            }
        }
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public boolean isServiceUp() {
        return serviceUp;
    }

    public void setServiceUp(boolean serviceUp) {
        this.serviceUp = serviceUp;
    }

    public abstract void verifyService();
}
