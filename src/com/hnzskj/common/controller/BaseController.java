/*
 * @项目名称: ewsm
 * @文件名称: BaseController.java
 * @日期: 2016-7-24 下午04:20:47  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.controller;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;


/**    
 * 项目名称：ewsm   <br/>
 * 类名称：BaseController.java   <br/>
 * 类描述： 基础类  <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-24 下午04:20:47   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-24 下午04:20:47   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
@Controller
public class BaseController<T>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6102109231885105798L;
	
	/**
	 * 日志信息
	 */
	Logger log = Logger.getLogger(BaseController.class);
	
	/**
	 * 操作成功
	 */
	public static final String SUCCESS_STRING="操作成功";
	
	/**
	 * 操作失败
	 */
	public static final String FAIL_STRING="操作失败";
	
	
}
