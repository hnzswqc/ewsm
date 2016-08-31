<!-- <%=request.getRequestURI()%> -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>demo</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@ include file="/common/bootstrap.jsp"%>
  </head>
  
  <body>
  	<form action="<%=basePath%>demo/index.shtml" id="queryForm" name="queryForm" method="post">
		<input type="hidden" name="page" id="reqPage" value="${pageBean.page }">
		<input type="hidden" name="limit" id="limit" value="${pageBean.limit }">
	</form>
	<div class="container-fluid" style="margin-top: 10px;">
		<div class="panel panel-primary">
		   <div class="panel-heading">
		      <h3 class="panel-title">
		 		      查询条件
		      </h3>
		   </div>
		   <div class="panel-body">
			   <form class="form-inline" id="searchForm" action="<%=basePath%>demo/index.shtml" method="post">
				  <div class="form-group">
				    <label for="id" style="display: inline;">id号：</label>
				    <input type="text"  class="form-control"  id="id" name="id" value="${demo.id }" placeholder="请输入id号">
				  </div>
				  <div class="form-group">
				    <label for="name" style="display: inline;">姓名：</label>
				    <input type="text" class="form-control" id="name" name="name" value="${demo.name }" placeholder="请输入姓名">
				  </div>
				  <button type="submit" class="btn btn-default">查询</button>
  				  <button type="button" class="btn btn-info" onclick="javascript:resetForm();">重置</button>
				</form>
		   </div>
		</div>
		
		<div class="panel panel-default">
			<div class="panel-body" >
				<a href="<%=basePath%>demo/goAddPage.shtml" class="btn btn-primary">添加</a>
				<a href="javascript:goAdd();" class="btn btn-primary">弹窗</a>
				<a href="javascript:updConfirmClick();" class="btn btn-primary">修改</a>
				<a href="javascript:delConfirmClick();" class="btn btn-danger">删除</a>
			</div>
		</div>
		
		<div class="panel panel-primary">
		   <div class="panel-heading">
		      <h3 class="panel-title">
		 		     demo详细信息
		      </h3>
		   </div>
		   		<table class="table table-bordered table-hover " >
				<thead>
					<tr>
						<th width="50px;" style="text-align: center;">
							<input type="checkbox" onclick="javascript:selAll(this);"/>
						</th>
						<th width="50px;" style="text-align: center;">
							序号
						</th>
						<th>
							id
						</th>
						<th>
							name
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pageBean.list}" var="demo" varStatus="i">
						<tr>
							<td style="text-align: center;">
								<input type="checkbox" name="id" value="${demo.id }"/>
							</td>
							<td style="text-align: center;">
								${(pageBean.page-1)*pageBean.limit+i.index+1 }
							</td>
							<td>
								${demo.id }
							</td>
							<td>
								${demo.name }
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<c:if test="${!empty pageBean.list }">
			<jsp:include page="/common/page.jsp"></jsp:include>
		</c:if>
	</div>
	</body>
	
	<script type="text/javascript">
		function goAdd(){
			Ewin.dialog({
				message:"添加信息",
				url:"<%=basePath%>demo/goAddPage.shtml",
			});
		}
		
		function selAll(obj){
			if(obj.checked){
				 $("[name = id]:checkbox").each(function(i,n){
					 n.checked="checked";
			     });
			}else{
				 $("[name = id]:checkbox").each(function(i,n){
					 n.checked="";
			     });
			}
		}
	
		//删除
		function delConfirmClick(){
			var id="";
			$('input:checkbox[name=id]:checked').each(function(i,n){
				id+=n.value+",";
			});
			
			if(id==""){
				Ewin.alert({message:"请先选择一条信息"});
				return;
			}

			Ewin.confirm({message:"<span style='color:red;font-weight:bold;'>确定要删除吗？</span>"}).on(function(e){
				if(!e){
					return;
				}
				$.ajax({
					url:'<%=basePath%>demo/delete.shtml',
					type:'POST',
					data:{"ids":id},
					dataType:'JSON',
					success:function(json){
						if(json.success){
							Ewin.alert({ message: "删除成功！" }).on(function (e) {
						    	window.location.href="<%=basePath%>demo/index.shtml";
				     	  });
						}else{
							Ewin.alert({ message: "删除失败" });
						}
					},
					error:function(e){
						Ewin.alert({ message: "操作出现异常！" });
					}
				});
			});
		}

		//重置表单
		function resetForm(){
			$("#id").attr("value","");
			$("#name").attr("value","");
			$("#searchForm").submit();
		}


		function updConfirmClick(){
			var id="";
			var i=0;
			$('input:checkbox[name=id]:checked').each(function(k,n){
				id=n.value;
				i++;
			});

			if(i==0){
				Ewin.alert({message:"请先选择一条信息"});
				return;
			}
			if(i>1){
				Ewin.alert({message:"只能选择<span style='color:red'>一条</span>信息进行修改操作!"});
				return;
			}
			if(i==1){
				window.location.href="<%=basePath%>demo/goAddPage.shtml?id="+id;
				return;
			}
			
		}
		
	</script>
</html>
