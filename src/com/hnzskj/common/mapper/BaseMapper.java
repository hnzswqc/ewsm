/*
 * @项目名称: ewsm
 * @文件名称: BaseMapper.java
 * @日期: 2016-7-21 下午04:33:08  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.mapper;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：BaseMapper.java   <br/>
 * 类描述：T 实体参数，E对应mapper类   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-21 下午04:33:08   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-21 下午04:33:08   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
public abstract interface BaseMapper<T,E> {

	
	/**
	 * 
	 * 方法描述：添加方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:34<br/>         
	 * @param t 实体对象<br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract int add(T t);
	
	/**
	 * 
	 * 方法描述：修改方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:43<br/>         
	 * @param t 实体对象<br/> 
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract int update(T t);
	
	/**
	 * 
	 * 方法描述：删除方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:50<br/>         
	 * @param t 实体对象<br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract int deleteByPrimaryKey(T t);
	
	/**
	 * 
	 * 方法描述：批量删除的防范<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:50<br/>         
	 * @param t 实体对象<br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract int delete(Serializable...key);
	
	
	
	/**
	 * 
	 * 方法描述：查找一条记录方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:58<br/>         
	 * @param t 实体对象<br/>  
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract T findByPrimaryKey(T t);
	
	/**
	 * 
	 * 方法描述：查找一条记录方法<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-21 下午05:00:58<br/>         
	 * @param t 实体对象<br/>  
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract T findByExample(T t);
	
	
	
	/**
	 * 
	 * 方法描述：分页查询总数量<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 上午09:04:54<br/>         
	 * @param map 实体对象<br/>  
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract Integer findCount(HashMap<String, Object> map);
	
	
	/**
	 * 
	 * 方法描述：根据map参数进行查询<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-31 上午10:27:30<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	abstract List<T> find(HashMap<String,Object> map);
	
	
	 
}
