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

		<title>主页</title>
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
							 <a href="javascript:window.location.href='jsp/demo/list_time.jsp'">定时规则管理</a>
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
			<div class="col-md-4 column">
				<div class="panel panel-primary" >
					<div class="panel-heading">
						<h3 class="panel-title">
							审计质量控制预警
							<div class="close">
								<span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" title="进入管理界面" onclick="javascript:window.location.href='<%=basePath%>jsp/demo/list.jsp';"></span>
							</div>
							<div class="close">
								<span class="glyphicon glyphicon-plus" aria-hidden="true" title="添加定时任务"  onclick="javascript:alert(1);"></span>
							</div>
							<div class="close">
								<span class="glyphicon glyphicon-refresh" aria-hidden="true" title="刷新面板" onclick="javascript:alert(1);"></span>
							</div>
						</h3>
					</div>
					<div class="panel-body panel-body-height" style="overflow: auto">
						<table class="table table-hover" >
							<tbody>
								<tr>
									<td width="70%">
										审计决定预警信息
									</td>
									<td>
									    <input id="switch" type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" onclick="JavaScript:switchClick(this);"/>
									</td>
								</tr>
									<tr>
									<td>
										审计移送
									</td>
									<td>
									    <input type="checkbox"  name="myChecked" data-handle-width="40" data-size="mini" />
									</td>
								</tr>
									<tr>
									<td>
										审计
									</td>
									<td>
									    <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
									</td>
								</tr>
								<tr>
									<td width="70%">
										审计决定预警信息
									</td>
									<td>
									    <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
									</td>
								</tr>
							</tbody>
						</table>
					
					</div>
					<!-- 
					<div class="panel-footer">
						审计质量控制预警
					</div>
					 -->
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							在线审理
							<div class="close">
								<span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" title="进入管理界面" onclick="javascript:window.location.href='<%=basePath%>jsp/demo/list.jsp';"></span>
							</div>
							<div class="close">
								<span class="glyphicon glyphicon-plus" aria-hidden="true" title="添加定时任务"  onclick="javascript:alert(1);"></span>
							</div>
							<div class="close">
								<span class="glyphicon glyphicon-refresh" aria-hidden="true" title="刷新面板" onclick="javascript:alert(1);"></span>
							</div>
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							OA项目资料上报
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- content end -->
	
	  <!-- content start -->
	<div class="container" >
		<div class="row clearfix">
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							请销假预警
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						请销假预警<br/>
						<br/>
						<br/>
					</div>
					<!-- 
					<div class="panel-footer">
						审计质量控制预警
					</div>
					 -->
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							数据申请预警
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title ">
							待办事项
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- content end -->
	
	  <!-- content start -->
	<div class="container" >
		<div class="row clearfix">
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							待阅事项
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						请销假预警<br/>
						<br/>
						<br/>
					</div>
					<!-- 
					<div class="panel-footer">
						审计质量控制预警
					</div>
					 -->
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							通知信息
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							公告
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- content end -->
	
	 <!-- content start -->
	<div class="container" >
		<div class="row clearfix">
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							公文传输
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						请销假预警<br/>
						<br/>
						<br/>
					</div>
					<!-- 
					<div class="panel-footer">
						审计质量控制预警
					</div>
					 -->
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							邮件提醒
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							公告
						</h3>
					</div>
					<div class="panel-body panel-body-height">
						Panel content
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- content end -->
	
	<script type="text/javascript">
	$("[name='myChecked']").bootstrapSwitch({onText:"开启",offText:"关闭",onColor:"primary",offColor:"danger"});
    	function set(){
        	//Ewin.dialog({title:"定时时间设置",url:"jsp/demo/set.jsp"});
        	$("#exampleModal").modal({
            	width:100
           	});
        }

        function switchClick(obj){
        	if ($("#switch").is(":focus") == false) return;
        }


    </script>
									    
	</body>
</html>
