/*
 * @项目名称: ewsm
 * @文件名称: DateBase.java
 * @日期: 2016-8-10 下午07:38:58  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.sys.datebase.model;

import java.io.Serializable;

import com.hnzskj.common.model.BaseModel;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：DateBase.java   <br/>
 * 类描述： 数据源实体类  <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-8-10 下午07:38:58   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-8-10 下午07:38:58   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class DateBase extends BaseModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6322049592982820680L;

	
	/**
	 * 数据库主键
	 */
	private String dbUuid;
	
	/**
	 * 数据库名称
	 */
	private String dbName;
	
	/**
	 * 数据库驱动
	 */
	private String dbDriver;
	
	/**
	 * 数据库url链接
	 */
	private String dbUrl;
	
	/**
	 * 数据库用户
	 */
	private String dbUser;
	
	/**
	 * 数据密码
	 */
	private String dbPassword;
	
	/**
	 * 创建时间
	 */
	private String createTime;
	
	/**
	 * 创建者
	 */
	private String createUserUuid;

	/**
	 * 数据库主键
	 * @return the dbUuid
	 */
	public String getDbUuid() {
		return dbUuid;
	}

	/**
	 * 数据库主键
	 * @param dbUuid the dbUuid to set
	 */
	public void setDbUuid(String dbUuid) {
		this.dbUuid = dbUuid;
	}

	/**
	 * 数据库名称
	 * @return the dbName
	 */
	public String getDbName() {
		return dbName;
	}

	/**
	 * 数据库名称
	 * @param dbName the dbName to set
	 */
	public void setDbName(String dbName) {
		this.dbName = dbName;
	}

	/**
	 * 数据库驱动
	 * @return the dbDriver
	 */
	public String getDbDriver() {
		return dbDriver;
	}

	/**
	 * 数据库驱动
	 * @param dbDriver the dbDriver to set
	 */
	public void setDbDriver(String dbDriver) {
		this.dbDriver = dbDriver;
	}

	/**
	 * 数据库url链接
	 * @return the dbUrl
	 */
	public String getDbUrl() {
		return dbUrl;
	}

	/**
	 * 数据库url链接
	 * @param dbUrl the dbUrl to set
	 */
	public void setDbUrl(String dbUrl) {
		this.dbUrl = dbUrl;
	}

	/**
	 * 数据库用户
	 * @return the dbUser
	 */
	public String getDbUser() {
		return dbUser;
	}

	/**
	 * 数据库用户
	 * @param dbUser the dbUser to set
	 */
	public void setDbUser(String dbUser) {
		this.dbUser = dbUser;
	}

	/**
	 * 数据密码
	 * @return the dbPassword
	 */
	public String getDbPassword() {
		return dbPassword;
	}

	/**
	 * 数据密码
	 * @param dbPassword the dbPassword to set
	 */
	public void setDbPassword(String dbPassword) {
		this.dbPassword = dbPassword;
	}

	/**
	 * 创建时间
	 * @return the createTime
	 */
	public String getCreateTime() {
		return createTime;
	}

	/**
	 * 创建时间
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	/**
	 * 创建者
	 * @return the createUserUuid
	 */
	public String getCreateUserUuid() {
		return createUserUuid;
	}

	/**
	 * 创建者
	 * @param createUserUuid the createUserUuid to set
	 */
	public void setCreateUserUuid(String createUserUuid) {
		this.createUserUuid = createUserUuid;
	}
	
	
}
