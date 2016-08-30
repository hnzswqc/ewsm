/*
 * @项目名称: ewsm
 * @文件名称: DemoController.java
 * @日期: 2016-7-21 下午05:58:09  
 * @版权: 2011 河南中审科技有限公司
 * @开发公司或单位：河南中审科技有限公司研发部
 */
package com.hnzskj.demo.controller;

import java.io.Serializable;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hnzskj.common.controller.BaseController;
import com.hnzskj.common.model.Json;
import com.hnzskj.common.model.PageBean;
import com.hnzskj.demo.model.Demo;
import com.hnzskj.demo.service.IDemoService;

/**    
 * 项目名称：ewsm   <br/>
 * 类名称：DemoController.java   <br/>
 * 类描述：   <br/>
 * 创建人：开发部笔记本   <br/>
 * 创建时间：2016-7-21 下午05:58:09   <br/>
 * 修改人：开发部笔记本   <br/>
 * 修改时间：2016-7-21 下午05:58:09   <br/>
 * 修改备注：    <br/>
 * @version  1.0  
 */
@Controller
@RequestMapping(value="/demo")
public class DemoController extends BaseController<Demo>{
	/**
	 * 
	 */
	private static final long serialVersionUID = -732348778820960942L;
	
	/**
	 * 业务层注入
	 */
	@Autowired
	private IDemoService demoService = null;
	
	/**
	 * 
	 * 方法描述：<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-8-1 下午05:48:28<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="/index")
	public ModelAndView index(@ModelAttribute()Demo demo,@ModelAttribute()PageBean<Demo> pageBean){
		pageBean = demoService.find(pageBean, demo);
		ModelAndView model = new ModelAndView("demo/index");
		model.addObject("demo", demo);
		model.addObject("pageBean", pageBean);
		return model;
	}
	
	/**
	 * 
	 * 方法描述：进入添加界面<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-8-4 下午09:25:46<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="goAddPage")
	public ModelAndView addPage(@ModelAttribute()Demo demo){
		demo = demoService.findByPrimaryKey(demo);
		ModelAndView modelAndView = new ModelAndView("demo/add");
		modelAndView.addObject("demo", demo);
		return modelAndView;
	}
	
	
	/**
	 * 
	 * 方法描述：添加，参数乱码的时候需要在requestMapping(value="/add",produces = "text/html;charset=UTF-8")去配置<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:41:23<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public String add(@ModelAttribute()Demo demo){
		boolean result = demoService.add(demo);
		return  new Json(result,result?SUCCESS_STRING:FAIL_STRING).toJson();
	}
	
	/**
	 * 
	 * 方法描述：删除<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:41:31<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="/deleteById")
	@ResponseBody
	public String delete(@ModelAttribute()Demo demo){
		boolean result = demoService.delete(demo);
		return  new Json(result,result?SUCCESS_STRING:FAIL_STRING).toJson();
	}
	
	/**
	 * 
	 * 方法描述：删除<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:41:31<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="/delete")
	@ResponseBody
	public String delete(@Param(value="ids")String ids){
		boolean result = false;
		if(StringUtils.isNotEmpty(ids)){
			Serializable [] strings = ids.split(",");
			result = demoService.delete(strings);
		}
		return  new Json(result,result?SUCCESS_STRING:FAIL_STRING).toJson();
	}
	
	
	/**
	 * 
	 * 方法描述：修改<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:41:41<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="/update")
	@ResponseBody
	public String update(@ModelAttribute()Demo demo){
		boolean result = demoService.update(demo);
		return  new Json(result,result?SUCCESS_STRING:FAIL_STRING).toJson();
	}
	
	/**
	 * 
	 * 方法描述：分页查询<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:41:50<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="/find")//,produces = "text/html;charset=UTF-8"
	@ResponseBody
	public String find(@ModelAttribute()Demo demo,@ModelAttribute()PageBean<Demo> pageBean){
		pageBean = demoService.find(pageBean, demo);
		return new Json(true,pageBean.getList(),pageBean.getTotalRecords()).toJson();
	}
	
	/**
	 * 
	 * 方法描述：分页查询<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-7-24 下午05:41:50<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="/findAll")
	@ResponseBody
	public String findAll(@ModelAttribute()Demo demo){
		PageBean<Demo> pageBean = demoService.find(null, demo);
		return new Json(true,pageBean.getList(),pageBean.getTotalRecords()).toJson();
	}
	
	/**
	 * 
	 * 方法描述：进入添加界面<br/>
	 * 创建人：开发部笔记本   <br/>
	 * 创建时间：2016-8-4 下午09:25:46<br/>         
	 * @param <br/>   
	 * @return <br/>   
	 * @version   1.0<br/>
	 */
	@RequestMapping(value="showChart")
	public ModelAndView chartPage(){
		ModelAndView modelAndView = new ModelAndView("demo/chart");
		return modelAndView;
	}
	
}
