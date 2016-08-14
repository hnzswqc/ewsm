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
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:save();">保存</button>
						  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="javascript:save();">关闭</button>
					</div>
				</div>
			</form>
</div>
	<!-- content end -->
	<script type="text/javascript">
		function save(){
			//self.parent.location.reload(true);
			self.parent.closeEwin();
		}

	</script>
	</body>
</html>
