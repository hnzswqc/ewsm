/*
 * @项目名称: ewsm
 * @文件名称: JDBCAppender.java
 * @日期: 2016-8-1 上午11:16:02  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.util.log4j;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.log4j.spi.ErrorCode;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：JDBCAppender.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-8-1 上午11:16:02   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-8-1 上午11:16:02   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class JDBCAppender extends org.apache.log4j.jdbc.JDBCAppender {

	protected String jndiName;
	
	
	public JDBCAppender(){
		super();
	}

	/* (non-Javadoc)
	 * @see org.apache.log4j.jdbc.JDBCAppender#closeConnection(java.sql.Connection)
	 */
	@Override
	protected void closeConnection(Connection con) {
		try {
			if(null!=connection && !connection.isClosed()){
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			 errorHandler.error("Error closing connection", e, ErrorCode.GENERIC_FAILURE);  
		}
	}

	/* (non-Javadoc)
	 * @see org.apache.log4j.jdbc.JDBCAppender#getConnection()
	 */
	@Override
	protected Connection getConnection() throws SQLException {
		Context context = null;
		try {
			context = new InitialContext();
			DataSource ds = (DataSource)context.lookup(getJndiName());
			if(ds!=null){
				this.connection =ds.getConnection();
				return connection;
			}
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * @return the jndiName
	 */
	public String getJndiName() {
		return jndiName;
	}

	/**
	 * @param jndiName the jndiName to set
	 */
	public void setJndiName(String jndiName) {
		this.jndiName = jndiName;
	}
	
	
	
	
}
