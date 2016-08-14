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
    <!-- content start -->
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
					
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="button" class="btn btn-default" onclick="javascript:save();">保存</button>
					</div>
				</div>
			</form>
</div>
	<!-- content end -->
	<script type="text/javascript">
		function save(){
			//self.parent.location.reload(true);
		}

	</script>
	</body>
</html>
