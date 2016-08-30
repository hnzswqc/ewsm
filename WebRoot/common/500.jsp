<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true"%>
<%@ include file="/common/common.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>500错误</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 	 500错误：服务器内部出现错误，请联系管理。
  	<div align="left" style="padding-top: 100px;padding-left: 10px;display: none;">
		<div>系统执行发生错误，信息描述如下：</div>
		<div>错误状态代码是：${pageContext.errorData.statusCode}</div>
		<div>错误发生页面是：${pageContext.errorData.requestURI}</div>
		<div>错误信息：${pageContext.exception}</div>
		<div>
			错误堆栈信息：<br/>
			<c:forEach var="trace" items="${pageContext.exception.stackTrace}">
			<p>${trace}</p>
			</c:forEach>
		</div>
  	</div>
  </body>
</html>
