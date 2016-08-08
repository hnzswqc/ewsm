/*
 * @项目名称: ewsm
 * @文件名称: InitServlet.java
 * @日期: 2016-7-22 下午04:31:16  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.util.servlet;

import java.io.File;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：InitServlet.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-22 下午04:31:16   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-22 下午04:31:16   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class InitServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3803648516932688572L;
	
	/**
	 * 日志
	 */
	Logger log = Logger.getLogger(InitServlet.class);
	

	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	@Override
	public void init() throws ServletException {
		//初始化一些参数信息
		initLog4j();
		log.info("系统启动成功...");
		super.init();
	}
	
	/**
	 * 
	 * 方法描述：初始化日志文件<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-22 下午04:35:20<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	private void initLog4j(){
		String strPrefix = getServletContext().getRealPath("/"); 
		System.setProperty("system.root", strPrefix);
		String strFile = getInitParameter("log4j");
		if (strFile != null)
			PropertyConfigurator
					.configure(strPrefix + File.separator + strFile);
		else {
			System.exit(-1);
		}
	}
	
	
	
}
