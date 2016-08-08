/*
 * @项目名称: ewsm
 * @文件名称: BaseServiceImpl.java
 * @日期: 2016-7-21 下午05:14:07  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.common.service.impl;


import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import com.hnzskj.common.mapper.BaseMapper;
import com.hnzskj.common.model.PageBean;
import com.hnzskj.common.service.IBaseService;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：BaseServiceImpl.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-21 下午05:14:07   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-21 下午05:14:07   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 * @param <T>
 */
public class BaseServiceImpl<T,E> implements IBaseService<T>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4924385944757631393L;
	
	/**
	 * 日志
	 */
	Logger log = Logger.getLogger(BaseServiceImpl.class);
	
	/**
	 * 参数存储器
	 */
	private HashMap<String, Object> map = new HashMap<String, Object>();
	
	/**
	 * 默认pageBea分页参数
	 */
	private final String  MAP_PAGE_BEAN_KEY ="pageBean";
	
	
	/**
	 * 通用mapper，需要在使用的时候set对应的业务mapper进行使用
	 */
	public BaseMapper<T,E> baseMapper = null;
	
	/**
	 * @param baseMapper the baseMapper to set
	 */
	public void setBaseMapper(BaseMapper<T,E> baseMapper) {
		this.baseMapper = baseMapper;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.commom.service.IBaseService#add(java.lang.Object)
	 */
	public boolean add(T t) {
		int result = baseMapper.add(t);
		return result>0?true:false;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.commom.service.IBaseService#delete(java.lang.Object)
	 */
	public boolean delete(T t) {
		int result = baseMapper.deleteByPrimaryKey(t);
		return result>0?true:false;
	}
	
	/* (non-Javadoc)
	 * @see com.hnzskj.commom.service.IBaseService#findByPrimaryKey(java.lang.Object)
	 */
	public T findByPrimaryKey(T t) {
		t = baseMapper.findByPrimaryKey(t);
		return t;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.commom.service.IBaseService#update(java.lang.Object)
	 */
	public boolean update(T t) {
		int result = baseMapper.update(t);
		return result>0?true:false;
	}
	
	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#findCount(java.lang.Object)
	 */
	public Integer findCount(T t) {
		map.put(t.getClass().getSimpleName().toLowerCase(), t);
		int count = baseMapper.findCount(map);
		return count;
	}
	
	
	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#findCount(java.lang.Object, java.lang.String)
	 */
	public Integer findCount(T t, String modelName) {
		map.put(modelName, t);
		int count = baseMapper.findCount(map);
		return count;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#findCount(java.util.HashMap)
	 */
	public Integer findCount(HashMap<String, Object> map) {
		int count = baseMapper.findCount(map);
		return count;
	}
	
	

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#find(java.lang.Object, com.hnzskj.common.model.PageBean, java.lang.String)
	 */
	public List<T> find(T t, PageBean<T> pageBean, String modelName) {
		map.put(modelName, t);
		map.put(MAP_PAGE_BEAN_KEY, pageBean);
		List<T> list = this.find(map);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#find(java.lang.Object, com.hnzskj.common.model.PageBean)
	 */
	public List<T> find(T t, PageBean<T> pageBean) {
		map.put(t.getClass().getSimpleName().toLowerCase(), t);
		map.put(MAP_PAGE_BEAN_KEY, pageBean);
		List<T> list = this.find(map);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#find(java.util.HashMap)
	 */
	public List<T> find(HashMap<String, Object> map) {
		List<T> list = baseMapper.find(map);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#find(com.hnzskj.common.model.PageBean, java.lang.Object, java.lang.String)
	 */
	public PageBean<T> find(PageBean<T> pageBean, T t, String modelName) {
		int count = findCount(t);
		if(count<=0){
			return pageBean;
		}
		List<T> list = find(t, pageBean, modelName);
		if(null==pageBean){
			pageBean = new PageBean<T>();
		}
		pageBean.setTotalRecords(count);
		pageBean.setList(list);
		return pageBean;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#find(com.hnzskj.common.model.PageBean, java.lang.Object)
	 */
	public PageBean<T> find(PageBean<T> pageBean, T t) {
		int count = findCount(t);
		if(count<=0){
			return pageBean;
		}
		List<T> list = find(t, pageBean);
		if(null==pageBean){
			pageBean = new PageBean<T>();
		}
		pageBean.setTotalRecords(count);
		pageBean.setList(list);
		return pageBean;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#delete(java.io.Serializable[])
	 */
	public boolean delete(Serializable... key) {
		int result = baseMapper.delete(key);
		return result>0?true:false;
	}

	/* (non-Javadoc)
	 * @see com.hnzskj.common.service.IBaseService#findByExample(java.lang.Object)
	 */
	public T findByExample(T t) {
		t = baseMapper.findByExample(t);
		return t;
	}
	
	
}
