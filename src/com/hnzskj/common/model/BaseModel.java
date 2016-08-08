/*
 * @项目名称: ewsm
 * @文件名称: BaseModel.java
 * @日期: 2016-7-24 下午05:19:34  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.model;

import java.io.Serializable;

import org.apache.commons.lang.StringUtils;

import com.hnzskj.common.util.date.DateUtil;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：BaseModel.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-24 下午05:19:34   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-24 下午05:19:34   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class BaseModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8579954988052150041L;
 
	
	/**
	 * 当前时间
	 */
	private String currentTime;

	/**
	 * 当前时间
	 * @return the currentTime
	 */
	public String getCurrentTime() {
		if(StringUtils.isEmpty(currentTime)){
			return DateUtil.getCurrentTime();
		}
		return currentTime;
	}

	/**
	 * 当前时间
	 * @param currentTime the currentTime to set
	 */
	public void setCurrentTime(String currentTime) {
		this.currentTime = currentTime;
	}

	
	
}
