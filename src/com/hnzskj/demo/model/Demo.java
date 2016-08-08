/*
 * @项目名称: ewsm
 * @文件名称: Demo.java
 * @日期: 2016-7-21 下午04:08:38  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.demo.model;


/**    
 * 项目名称：ewsm   <br/>
 * 类名称：Demo.java   <br/>
 * 类描述：测试接口   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-21 下午04:08:38   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-21 下午04:08:38   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class Demo {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2356581424619388720L;
	
	public Demo(){}
	
	public Demo(String id,String name){
		this.id = id;
		this.name = name;
	}

	
	/**
	 * id
	 */
	private String id;
	
	/**
	 * 名称
	 */
	private String name;

	/**
	 * id
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * id
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 名称
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * 名称
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
}
