<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>定时规则管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<%@ include file="/common/bootstrap.jsp"%>
		<style type="text/css">


		</style>
	</head>

	<body>
	 <!--导航-->
     <div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
					<div class="navbar-header">
						  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> 
						  <a class="navbar-brand" href="<%=basePath%>">审计预警平台&nbsp;V1.0</a>
					</div>
					
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li>
								 <a href="javascript:window.location.href='jsp/demo/list_time.jsp'">定时规则管理&nbsp;&nbsp;</a>
							</li>
							<li>
								 <a href="javascript:window.location.href='<%=basePath%>demo/index.shtml'">demo</a>
							</li>
						</ul>
					</div>
					
				</nav>
			</div>
		</div>
	</div>

    <!-- content start -->
	<div class="container" style="margin-top: 70px;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<!-- 面板开始 -->
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								定时规则管理
								<div class="close">
									<span class="glyphicon glyphicon-edit" aria-hidden="true" onclick="javascript:alert(1);"></span>
								</div>
								<div class="close">
									<span class="glyphicon glyphicon-plus" aria-hidden="true" onclick="javascript:add();"></span>
								</div>
								<div class="close">
									<span class="glyphicon glyphicon-refresh" aria-hidden="true" onclick="javascript:alert('刷新按钮');"></span>
								</div>
							</h3>
						</div>
						<div class="panel-body" style="height: 80%">
							<table class="table table-hover" >
								<tbody>
									<tr>
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											1
										</td>
										<td>
											每天中午12点触发
										</td>
										<td>
											0 0 12 * * ?
										</td>
										<td>
											一些说明信息......
										</td>
									</tr>
									<tr>
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											2
										</td>
										<td>
											每天中午12点触发
										</td>
										<td>
											0 0 12 * * ?
										</td>
										<td>
											一些说明信息......
										</td>
									</tr>
									<tr>
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											3
										</td>
										<td>
											每天中午12点触发
										</td>
										<td>
											0 0 12 * * ?
										</td>
										<td>
											一些说明信息......
										</td>
									</tr>
									<tr>
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											4
										</td>
										<td>
											每天中午12点触发
										</td>
										<td>
											0 0 12 * * ?
										</td>
										<td>
											一些说明信息......
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				<!-- 面板结束 -->
			</div>
		</div>
	</div>
	
	<!-- content end -->
	
	
<!-- 修改设置 -->
<div class="modal fade" id="time_set" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
        <h4 class="modal-title" id="exampleModalLabel">添加定时任务</h4>
      </div>
      <div class="modal-body">
        	<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">定时规则</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3" placeholder="每天中午12点触发"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">表达式</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword3" placeholder="0 0 12 * * ?"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">说明信息</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3"></textarea>
					</div>
				</div>
			</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" >保存</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>


	
	<script type="text/javascript">
		function add(){
			$("#time_set").modal({backdrop: 'static',keyboard: false});
		}
		
	</script>					    
	</body>
</html>
