<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<script type="text/javascript">
	//分页
	function goNextPage( page ) {
		document.getElementById("reqPage").value = page;
		document.forms.namedItem("queryForm").submit();	
	}

	//跳转到该页
	function jumpToThePage(obj){
		var currentPage =$("#toThePage").val();
		if(obj != null || obj !=undefined){
			currentPage = obj.value;
		}
		
		if(currentPage>=${empty pageBean.totalPage?1:pageBean.totalPage}){
			currentPage=${empty pageBean.totalPage?1:pageBean.totalPage};
		}
		goNextPage(currentPage);
	}
	</script>
<!-- 分页 -->
<div style="text-align: right;">
<ul class="pagination" >
<!-- 
<li class="disabled" >
         <a>转到<input type="text" onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "  onclick="goClickCountPage()"  id ="keyInput" onchange="goPageCount()">页</a>
        <a><button class="page-btn" onclick="goClickCountPage(),goPageCount()">跳转</button></a>
</li> -->
	<c:choose>
		<c:when test="${ 1 == pageBean.page}">
			<li class="disabled" >
				<a href="javascript:void(0);">首页</a>
				<a href="javascript:void(0);">上一页</a>
			</li>
		</c:when>
		<c:otherwise>
			<li>
				<a href="" onClick="goNextPage(1);return false;">首页</a>
				<a href="" onClick="goNextPage(${pageBean.page-1});return false;">上一页</a>
			</li>
		</c:otherwise>
	</c:choose>
	<c:forEach begin="${pageBean.beginIndex}" end="${pageBean.endIndex}"
		var="pageCount" step="1">
		<c:choose>
			<c:when test="${ pageCount == pageBean.page}">
				<li class="disabled">
					<a href="javascript:void(0);">${pageCount }</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="" onClick="goNextPage(${pageCount });return false;">${pageCount
						}</a>
				</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:choose>
		<c:when test="${pageBean.page >= pageBean.totalPage}">
			<li class="disabled">
				<a href="javascript:void(0);">下一页</a>
				<a href="javascript:void(0);">末页</a>
			</li>
		</c:when>
		<c:otherwise>
			<li>
				<a href="javascript:goNextPage(${pageBean.page+1 });" onClick="">下一页</a>
				<a href="" onClick="goNextPage(${pageBean.totalPage});return false;">末页</a>
			</li>
		</c:otherwise>
	</c:choose>
	<!-- 
		<li class="input-append">
			<select class="span1" onchange="javascript:jumpToThePage(this);">
				<c:forEach begin="1" end="${pageBean.totalPage}" var="index" step="1">
			  		<option value="${index }" ${ index == pageBean.page ? 'selected' : ''}>${index }/${pageBean.totalPage}</option>
			 	</c:forEach>
			</select>
		</li>
		 -->
	 <li>
		<span class="help-inline">共${pageBean.totalPage}页/${pageBean.totalRecords }条</span>
	</li>
	<!-- 
	<li>
		<div class="input-group col-xs-1">
		  <input class="form-control"  style="min-width: 80px;" type="number"
				id="toThePage" type="text" value="${pageBean.page  }"
				onkeyup="this.value=this.value.replace(/\D/g,'')"
				onafterpaste="this.value=this.value.replace(/\D/g,'')">
		  <span class="input-group-btn">
				<button class="btn btn-default" type="button"
					onClick="javascript:jumpToThePage(null);">
					跳转
				</button> 
			</span>
		</div>
	</li>
	 -->
</ul>
</div>

<!-- /分页 -->
