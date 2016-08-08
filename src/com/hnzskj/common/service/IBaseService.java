/*
 * @项目名称: ewsm
 * @文件名称: BaseService.java
 * @日期: 2016-7-21 下午04:36:24  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.service;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

import com.hnzskj.common.model.PageBean;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：BaseService.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-21 下午04:36:24   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-21 下午04:36:24   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public abstract interface IBaseService<T> extends Serializable{


	/**
	 * 
	 * 方法描述：添加方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:34<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract boolean add(T t);
	
	/**
	 * 
	 * 方法描述：修改方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:43<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract boolean update(T t);
	
	/**
	 * 
	 * 方法描述：删除方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:50<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract boolean delete(T t);
	
	/**
	 * 
	 * 方法描述：删除方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:50<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract boolean delete(Serializable...key);
	
	/**
	 * 
	 * 方法描述：查找一条记录方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:58<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract T findByPrimaryKey(T t);
	
	/**
	 * 
	 * 方法描述：查找一条记录方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:58<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract T findByExample(T t);
	
	
	/**
	 * 
	 * 方法描述：分页查询总数量<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 上午09:04:54<br/>         
	 * @param t 实体对象<br/>  
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract Integer findCount(HashMap<String, Object> map);
	
	/**
	 * 
	 * 方法描述：分页查询总数量<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 上午09:04:54<br/>         
	 * @param t 实体对象<br/>  
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract Integer findCount(T t);
	
	/**
	 * 
	 * 方法描述：分页查询总数量<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 上午09:04:54<br/>         
	 * @param t 实体对象<br/> 
	 * @param modelName 条件参数实体对象<br/> 
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract Integer findCount(T t,String modelName);
	
	
	
	/**
	 * 
	 * 方法描述：分页查找所有记录方法。调用此方法的时候，map中key为类名(小写)<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:01:30<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract List<T> find(T t,PageBean<T> pageBean);
	
	/**
	 * 
	 * 方法描述：分页查找所有记录方法。调用此方法的时候，map中key为类名(小写)<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:01:30<br/>         
	 * @param modelName 参数别名，在mapper.xml文件中作为实体变量获取属性信息<br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract List<T> find(T t,PageBean<T> pageBean,String modelName);
	
	/**
	 * 
	 * 方法描述：分页查找所有记录方法。调用此方法的时候，map中key为类名(小写)<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:01:30<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract List<T> find(HashMap<String, Object> map);
	
	/**
	 * 
	 * 方法描述：获取分页信息<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-31 下午03:34:48<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract PageBean<T> find(PageBean<T> pageBean,T t);
	
	/**
	 * 
	 * 方法描述：获取分页信息，默认实体对象名称<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-31 下午03:35:07<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract PageBean<T> find(PageBean<T> pageBean,T t,String modelName);
	
	
}
