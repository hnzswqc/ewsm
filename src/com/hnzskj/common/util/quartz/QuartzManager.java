/*
 * @项目名称: ewsm
 * @文件名称: QuartzManager.java
 * @日期: 2016-7-25 下午07:51:19  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.util.quartz;

import java.util.Date;
import java.util.Properties;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.DateBuilder;
import org.quartz.Job;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;


/**    
 * 项目名称：ewsm   <br/>
 * 类名称：QuartzManager.java   <br/>
 * 类描述：定时任务   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-25 下午07:51:19   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-25 下午07:51:19   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class QuartzManager {

	/**
	 * 日志
	 */
	Logger log =Logger.getLogger(QuartzManager.class);
	
	/**
	 * 实例工厂
	 */
	private static SchedulerFactory sf = new StdSchedulerFactory();

	/**
	 * 定时器
	 */
	private static Scheduler scheduler = null;
	
	/**
	 * 任务组名称组
	 */
	private static String DEFAULT_JOB_GROUP_NAME = "DEFAULT_JOBGROUP";  
	
	/**
	 * 默认触发器组
	 */
	private static String DEFAULT_TRIGGER_GROUP_NAME = "DEFAULT_TRIGGERGROUP"; 
	    
	
	/**
	 * 
	 * 方法描述：获取不同实例的StdSchedulerFactory<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-25 下午09:14:33<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	private static void init(String schedulerName) throws SchedulerException{
		if(StringUtils.isNotEmpty(schedulerName)){
			Properties props = new Properties();
			props.put("org.quartz.scheduler.instanceName", schedulerName);
			//props.put("org.quartz.threadPool.class", "org.quartz.simpl.SimpleThreadPool");
			props.put("org.quartz.threadPool.threadCount", "10");
			((StdSchedulerFactory) sf).initialize(props);
		}
		scheduler = sf.getScheduler();
	}
	
	
	/**
	 * 
	 * 方法描述：获取定时任务信息<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-25 下午08:55:09<br/>         
	 * @param schedulerName 调度名称<br/>   
	 * @param jobName 工作名称<br/>   
	 * @param triggerName 触发器名称<br/>   
	 * @param cronTime 出发时间<br/>   
	 * @param jobClass 执行工作job类，需要实现job接口基类并实现execute方法<br/>
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public static Scheduler schedulerBuild(String schedulerName,String jobName,String triggerName,String cronTime,Class<? extends Job> jobClass) {
		try {
			init(schedulerName);
			JobDetail jobDetail = (JobDetail) JobBuilder.newJob(jobClass)
					.withIdentity(jobName, DEFAULT_JOB_GROUP_NAME).build();
			CronTrigger trigger = (CronTrigger) TriggerBuilder
					.newTrigger()
					.withIdentity(triggerName, DEFAULT_TRIGGER_GROUP_NAME)
					.withSchedule(
							CronScheduleBuilder.cronSchedule(cronTime))//"0/1 * * * * ?"
					.build();
			scheduler.scheduleJob(jobDetail, trigger);
		} catch (SchedulerException e) {
			e.printStackTrace();
		}
		return scheduler;
	}
	
	
	/**
	 * 
	 * 方法描述：基本方式配置定时器<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-25 下午07:45:14<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public void test() throws SchedulerException{
		 JobDetail jobDetail= JobBuilder.newJob(QuartzTest.class)
	         .withIdentity("testJob_1","group_1")
	         .build();
	 Date startTime = DateBuilder.nextGivenSecondDate(null,2);  
	 Date endTime = DateBuilder.nextGivenSecondDate(null,12);  
	 
	 Trigger trigger= TriggerBuilder
	         .newTrigger()
	         .withIdentity("trigger_1","group_1")
	         //.startNow()
	         .startAt(startTime).endAt(endTime)
	         .withSchedule(SimpleScheduleBuilder.simpleSchedule()
	         		//.withIntervalInMilliseconds(1000)//毫秒
	         		//.withIntervalInHours(1)//小时
	         		//.withIntervalInMinutes(1)//分钟
	         		.withIntervalInSeconds(1)//秒
	         		//.withRepeatCount(5)//重复次数+1
	         		//.repeatForever()//无限重复
	                 )
	         .build();
	 SchedulerFactory sf = new StdSchedulerFactory();
	 Scheduler sched = sf.getScheduler();
	 sched.scheduleJob(jobDetail,trigger);
	 sched.start();

	}
	
	

	
	public static void main(String[] args) throws SchedulerException {
		Scheduler s1 = schedulerBuild("s1","d","t","0/1 * * * * ?",QuartzTest.class);
		s1.start();
		
		System.err.println(s1.getSchedulerName());
		Scheduler s2 =schedulerBuild("s2","d","t","0/1 * * * * ?",QuartzTest.class);
		//Scheduler s2=sf.getScheduler("s1");
		s2.start();
		System.err.println(s2.getSchedulerName());
		//s2.shutdown();
		    
	}
}
