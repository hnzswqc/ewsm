/*
 * @项目名称: ewsm
 * @文件名称: DefaultJobContext.java
 * @日期: 2016-7-22 下午05:28:21  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.util.job;

import org.apache.log4j.Logger;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;


/**    
 * 项目名称：ewsm   <br/>
 * 类名称：DefaultJobContext.java   <br/>
 * 类描述：默认的定时任务类,该配置信息在spring-quartz.xml中进行配置   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-22 下午05:28:21   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-22 下午05:28:21   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class DefaultJobContext extends QuartzJobBean{

	/**
	 * 日志
	 */
	Logger log = Logger.getLogger(DefaultJobContext.class);
	
	
	/**
	 * 
	 * 方法描述：默认定时任务信息<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 上午09:25:10<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public void run(){
		log.info("定时任务已经启动...");
	}


	/* (non-Javadoc)
	 * @see org.springframework.scheduling.quartz.QuartzJobBean#executeInternal(org.quartz.JobExecutionContext)
	 */
	@Override
	protected void executeInternal(JobExecutionContext arg0)
			throws JobExecutionException {
		//run();
	}
}
