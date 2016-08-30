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
								审计结果跟踪预警模块配置
								<div class="close">
									<span class="glyphicon glyphicon-cog" aria-hidden="true" onclick="javascript:alert(1);"></span>
								</div>
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
						<div class="panel-body" style="overflow: auto;">
							<table class="table table-hover" >
								<tbody>
									<tr class="warning">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											1
										</td>
										<td>
										审计决定短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td style="width: 100px;">
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="success">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											2
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="info">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											3
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr  class="error">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											4
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td >
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-handle-height="30" data-size="mini" checked="checked"/>
										</td>
									</tr>
									<tr class="warning">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											1
										</td>
										<td>
										审计决定短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td style="width: 100px;">
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="success">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											2
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="info">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											3
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr  class="error">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											4
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td >
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-handle-height="30" data-size="mini" checked="checked"/>
										</td>
									</tr>
									<tr class="warning">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											1
										</td>
										<td>
										审计决定短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td style="width: 100px;">
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="success">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											2
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="info">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											3
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr  class="error">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											4
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td >
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-handle-height="30" data-size="mini" checked="checked"/>
										</td>
									</tr>
									<tr class="warning">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											1
										</td>
										<td>
										审计决定短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td style="width: 100px;">
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="success">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											2
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr class="info">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											3
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td>
											 <input type="checkbox" name="myChecked" data-handle-width="40" data-size="mini" />
										</td>
									</tr>
									<tr  class="error">
										<td style="width: 50px;">
											<input type="radio" name="uuid" value="1"/>
										</td>
										<td style="width: 50px;">
											4
										</td>
										<td>
										审计报告短信提醒设置
										</td>
										<td>
											每天9点
										</td>
										<td >
											 <input type="checkbox" id="a" name="myChecked" data-handle-width="40" data-handle-height="30" data-size="mini" checked="checked"/>
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
<div class="modal fade" id="window" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
        <h4 class="modal-title" id="exampleModalLabel">添加定时任务</h4>
      </div>
      <div class="modal-body">
        	<form class="form-horizontal" role="form">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">任务标题</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3" placeholder="请输入定时任务标题"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">任务标识</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3" placeholder="该内容唯一且只能为英文字母"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">定时设置</label>
					<div class="col-sm-10">
						 <select class="form-control">
					         <option>每天13点触发</option>
					         <option>每天14点触发</option>
					         <option>每天15点触发</option>
					         <option>每天16点触发</option>
					         <option>每天17点触发</option>
					      </select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">是否启用</label>
					<div class="col-sm-6 switch"  style="height: 30px;vertical-align: middle;" >
						<input type="checkbox" name="myChecked" data-handle-width="40"  />
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
	   $("[name='myChecked']").bootstrapSwitch({onText:"开启",offText:"关闭",onColor:"primary",offColor:"danger"});
		function add(){
			//Ewin.dialog({
			//	title:"添加信息定时任务信息",
			//	url:"<%=basePath%>jsp/demo/add.jsp",
			//});
			$("#window").modal({backdrop: 'static',keyboard: false});

		}
		
	</script>					    
	</body>
</html>
