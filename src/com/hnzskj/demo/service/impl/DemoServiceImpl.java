/*
 * @项目名称: ewsm
 * @文件名称: DemoServiceImpl.java
 * @日期: 2016-7-21 下午04:35:17  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hnzskj.common.service.impl.BaseServiceImpl;
import com.hnzskj.demo.mapper.DemoMapper;
import com.hnzskj.demo.model.Demo;
import com.hnzskj.demo.service.IDemoService;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：DemoServiceImpl.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-21 下午04:35:17   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-21 下午04:35:17   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
@Service
@Transactional
public class DemoServiceImpl extends BaseServiceImpl<Demo,DemoMapper> implements IDemoService{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7573604695639363782L;
	
	
	@Autowired
	private DemoMapper demoMapper = null;
	
	/**
	 * 
	 * 方法描述：需要设置对应的mapper类<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-31 下午12:30:32<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@Autowired
	public void setBaseMapper(){
		super.setBaseMapper(demoMapper);
	}

	
	
	
	
	
	
}
