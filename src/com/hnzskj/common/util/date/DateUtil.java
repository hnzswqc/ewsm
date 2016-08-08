/*
 * @项目名称: ewsm
 * @文件名称: DateUtil.java
 * @日期: 2016-7-24 下午05:25:15  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.util.date;

import java.text.SimpleDateFormat;
import java.util.Date;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：DateUtil.java   <br/>
 * 类描述：时间格式化   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-24 下午05:25:15   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-24 下午05:25:15   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class DateUtil {

	/**
	 * 
	 * 方法描述：时间格式化<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:27:23<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public static String getCurrentYear(){
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy");
		String data = format.format(date);
		return data;
	}
	
	/**
	 * 
	 * 方法描述：时间格式化<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:27:23<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public static String getCurrentDate(){
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String data = format.format(date);
		return data;
	}
	
	/**
	 * 
	 * 方法描述：时间格式化<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:27:23<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public static String getCurrentTime(){
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String data = format.format(date);
		return data;
	}
}
