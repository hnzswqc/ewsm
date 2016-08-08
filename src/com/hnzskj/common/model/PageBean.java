package com.hnzskj.common.model;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * 项目名称：crm     <br/>
 * 类名称：Page     <br/>
 * 创建人：king   <br/>
 * 创建时间：2011-3-7 上午09:14:55   <br/>  
 * 修改人：Administrator  <br/>
 * 修改时间：2011-3-7 上午09:14:55   <br/>  
 * 修改备注：     <br/>
 * @version   1.0
 */
public class PageBean<E> {
	/**
	 * 当前页面的索引
	 */
	protected int page = 1;
	
	/**
	 * 总页数
	 */
	protected int totalPage;
	
	/**
	 * 总记录数
	 */
	protected int totalRecords;
	
	/**
	 * 每页显示的记录数
	 */
	public int limit = 10;
	
	/**
	 * 偏移量
	 */
	private int offset;
	
	/**
	 * 开始索引
	 */
	private int beginIndex;
	
	/**
	 *  结束索引
	 */
	public int endIndex;
	
	/**
	 * 显示索引个数
	 */
	private int maxIndex = 6;
	
	/**
	 * 封装结果集的集合
	 */
	protected List<E> list = new ArrayList<E>();
	
	/**
	 * 封装对象数组对象
	 */
	protected List<String[]> objArray = new ArrayList<String[]>();

	/**
	 * 当前页面的索引
	 * @return the page
	 */
	public int getPage() {
		if(1>=page) page = 1;
		return page;
	}

	/**
	 * 当前页面的索引
	 * @param page the page to set
	 */
	public void setPage(int page) {
		this.page = page;
	}
	
	/**
	 * 偏移量
	 * @return the offset
	 */
	public int getOffset() {
		offset = (getPage()-1)*getLimit();
		return offset;
	}

	/**
	 * 偏移量
	 * @param offset the offset to set
	 */
	public void setOffset(int offset) {
		this.offset = offset;
	}

	/**
	 * 开始索引
	 * @return the beginIndex
	 */
	public int getBeginIndex() {
		return beginIndex;
	}

	/**
	 * 开始索引
	 * @param beginIndex the beginIndex to set
	 */
	public void setBeginIndex() {
		this.beginIndex = this.page - ( this.maxIndex - 1 ) / 2;
	}

	/**
	 * 结束索引
	 * @return the endIndex
	 */
	public int getEndIndex() {
		return endIndex;
	}

	/**
	 * 结束索引
	 * @param endIndex the endIndex to set
	 */
	public void setEndIndex() {
		if ( 0 >= this.page - (this.maxIndex - 1) / 2  ) {
			this.beginIndex = 1;
			if ( maxIndex > getTotalPage() ) {
				this.endIndex = this.totalPage;
			} else {
				this.endIndex = this.maxIndex;
			}
		} else {
			this.endIndex = this.page + ( 0 == ( this.maxIndex - 1 ) / 2 
											? ( this.maxIndex - 1 ) / 2 
											: ( this.maxIndex - 1 ) / 2 + 1 );
			if ( this.endIndex >= this.getTotalPage() ) {
				this.endIndex = this.getTotalPage();
				this.beginIndex = this.endIndex - this.maxIndex + 1;
				if ( 0 >= this.beginIndex ) {
					this.beginIndex = 1;
				}
			}
		}
	}
	

	/**
	 * 显示索引个数
	 * @return the maxIndex
	 */
	public int getMaxIndex() {
		return maxIndex;
	}

	/**
	 * 显示索引个数
	 * @param maxIndex the maxIndex to set
	 */
	public void setMaxIndex(int maxIndex) {
		this.maxIndex = maxIndex;
	}

	/**
	 * 总页数
	 * @return the totalPage
	 */
	public int getTotalPage() {
		return totalPage;
	}

	/**
	 * 总页数
	 * @param totalPage the totalPage to set
	 */
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	/**
	 * 总记录数
	 * @return the totalRecords
	 */
	public int getTotalRecords() {
		return totalRecords;
	}

	/**
	 * 总记录数
	 * @param totalRecords the totalRecords to set
	 */
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
		this.totalPage = (0 == this.totalRecords % this.limit)  
							? this.totalRecords / this.limit 
							: (this.totalRecords / this.limit) + 1;
		if (page > totalPage ) {
			page = totalPage;
		}
		if (page < 1) {
			page = 1;
		}
		this.setBeginIndex();
		this.setEndIndex();
	}

	/**
	 * 每页显示的记录数
	 * @return the limit
	 */
	public int getLimit() {
		return limit;
	}

	/**
	 * 每页显示的记录数
	 * @param limit the limit to set
	 */
	public void setLimit(int limit) {
		this.limit = limit;
	}

	/**
	 * 封装结果集的集合
	 * @return the list
	 */
	public List<E> getList() {
		return list;
	}

	/**
	 * 封装结果集的集合
	 * @param list the list to set
	 */
	public void setList(List<E> list) {
		this.list = list;
	}

	/**
	 * 封装对象数组对象
	 * @return the objArray
	 */
	public List<String[]> getObjArray() {
		return objArray;
	}

	/**
	 * 封装对象数组对象
	 * @param objArray the objArray to set
	 */
	public void setObjArray(List<String[]> objArray) {
		this.objArray = objArray;
	}

	
	
	
}