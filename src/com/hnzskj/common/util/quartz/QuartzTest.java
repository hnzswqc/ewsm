/*
 * @项目名称: ewsm
 * @文件名称: QuartzTest.java
 * @日期: 2016-7-30 下午04:04:59  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.util.quartz;

import java.util.Calendar;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：QuartzTest.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-30 下午04:04:59   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-30 下午04:04:59   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class QuartzTest implements Job{

	/* (non-Javadoc)
	 * @see org.quartz.Job#execute(org.quartz.JobExecutionContext)
	 */
	@SuppressWarnings("deprecation")
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		System.out.println(Calendar.getInstance().getTime().toLocaleString()+ "★★★★★★★★★★★"); 		
	}

}
