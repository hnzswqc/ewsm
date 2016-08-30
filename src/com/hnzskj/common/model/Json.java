/*
 * @项目名称: ewsm
 * @文件名称: Json.java
 * @日期: 2016-7-21 下午08:50:41  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.model;

import java.io.Serializable;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import com.hnzskj.common.util.date.DateUtil;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：Json.java   <br/>
 * 类描述： 返回json信息  <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-21 下午08:50:41   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-21 下午08:50:41   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public class Json implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6627815771875871175L;
	
	/**
	 * 无参构造函数
	 */
	public Json(){}
	
	/**
	 * 构造函数
	 * @param success 成功标志
	 */
	public Json(boolean success) {
		super();
		this.success = success;
	}


	/**
	 * 构造函数
	 * @param success 成功标志
	 * @param msg 返回信息
	 */
	public Json(boolean success, String msg) {
		super();
		this.success = success;
		this.msg = msg;
	}


	/**
	 * 构造函数
	 * @param success 成功标志
	 * @param msg 返回信息
	 * @param data 返回数据
	 */
	public Json(boolean success, String msg, Object data) {
		super();
		this.success = success;
		this.msg = msg;
		this.data = data;
	}
	
	/**
	 * 构造函数
	 * @param success 成功标志
	 * @param msg 返回信息
	 * @param data 返回数据
	 * @param dataSize 数据量
	 */
	public Json(boolean success,Object data, Integer dataSize) {
		super();
		this.success = success;
		this.data = data;
		this.dataSize = dataSize;
	}
	

	/**
	 * 构造函数
	 * @param success 成功标志
	 * @param msg 返回信息
	 * @param data 返回数据
	 * @param dataSize 数据量
	 */
	public Json(boolean success, String msg, Object data, Integer dataSize) {
		super();
		this.success = success;
		this.msg = msg;
		this.data = data;
		this.dataSize = dataSize;
	}


	/**
	 * 成功标志
	 */
	private boolean success;
	
	/**
	 * 返回信息
	 */
	private String msg;
	
	/**
	 * 返回数据
	 */
	private Object data;
	
	/**
	 * 数据量
	 */
	private Integer dataSize;
	

	/**
	 * 成功标志
	 * @return the success
	 */
	public boolean isSuccess() {
		return success;
	}

	/**
	 * 成功标志
	 * @param success the success to set
	 */
	public void setSuccess(boolean success) {
		this.success = success;
	}

	/**
	 * 返回信息
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}

	/**
	 * 返回信息
	 * @param msg the msg to set
	 */
	public void setMsg(String msg) {
		this.msg = msg;
	}

	/**
	 * 返回数据
	 * @return the data
	 */
	public Object getData() {
		return data;
	}

	/**
	 * 返回数据
	 * @param data the data to set
	 */
	public void setData(Object data) {
		this.data = data;
	}

	/**
	 * 数据量
	 * @return the dataSize
	 */
	public Integer getDataSize() {
		return dataSize;
	}

	/**
	 * 数据量
	 * @param dataSize the dataSize to set
	 */
	public void setDataSize(Integer dataSize) {
		this.dataSize = dataSize;
	}

	/**
	 * 
	 * 方法描述：转化jsonlist<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-8-30 下午05:41:27<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@SuppressWarnings("unchecked")
	public List<Object> fromJson(JSONArray jsonArray,Object arg){
		List<Object> list = JSONArray.toList(jsonArray, arg, new JsonConfig());
		return list;
	}
	
	/**
	 * 
	 * 方法描述：转换json对象<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-8-30 下午05:41:22<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public JSONObject fromJson(String json){
		JSONObject data = JSONObject.fromObject(json);
		return  data;
	}
	
	/**
	 * 
	 * 方法描述：生成json字符窜<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-8-30 下午05:44:32<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	public String toJson(){
		JSONObject json = new JSONObject();
		json.put("success", success);
		json.put("msg", msg);
		json.put("data", data);
		json.put("dataSize", dataSize);
		json.put("time",DateUtil.getCurrentTime());
		return json.toString();
	}
	
	
	
	public static void main(String[] args) {
		Json json = new Json(true);
		JSONObject jsonObject = json.fromJson(json.toJson());
		System.out.println(jsonObject.opt("success"));
	}
}
