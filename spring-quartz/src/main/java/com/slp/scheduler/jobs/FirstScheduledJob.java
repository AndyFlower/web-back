package com.slp.scheduler.jobs;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.slp.scheduler.util.AnotherBean;

public class FirstScheduledJob extends QuartzJobBean{
    private AnotherBean anotherBean;
	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		System.out.println("I am FirstScheduleJob" +System.currentTimeMillis());
		this.anotherBean.printAnotherMessage();
	}
	public AnotherBean getAnotherBean() {
		return anotherBean;
	}
	public void setAnotherBean(AnotherBean anotherBean) {
		this.anotherBean = anotherBean;
	}

}
