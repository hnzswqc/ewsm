<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common/common.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%@ include file="common/bootstrap.jsp"%>
  </head>
  
  <body>
    	
    	
    	<!-- fixed navbar -->
		<div class="navbar navbar-default navbar-fixed-top">
			 <div class="navbar-header">
      <a class="navbar-brand" href="#">W3Cschool</a>
   </div>
   <div>
      <ul class="nav navbar-nav">
         <li class="active"><a href="demo/index.shtml">demo</a></li>
         <li><a href="demo/showChart.shtml">chart</a></li>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Java 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#">jmeter</a></li>
               <li><a href="#">EJB</a></li>
               <li><a href="#">Jasper Report</a></li>
               <li class="divider"></li>
               <li><a href="#">分离的链接</a></li>
               <li class="divider"></li>
               <li><a href="#">另一个分离的链接</a></li>
            </ul>
         </li>
      </ul>
   </div>
		</div>

		<br/><br/><br/>
		<div class="container" style="margin-top:30px;">
    	<fieldset>
		    <legend>Demo</legend>
		    <div>
		    	<a id="add-btn" href="#" class="btn btn-primary">添加</a>
	    		<a href="<%=basePath%>demo/add.shtml" class="btn">add</a>
		    	<a href="<%=basePath%>demo/delete.shtml" class="btn btn-link">delete</a>
		    	<a href="<%=basePath%>demo/update.shtml" class="btn btn-info">update</a>
		    	<a href="<%=basePath%>demo/find.shtml" class="btn btn-success">find(分页)</a>
		    	<a href="<%=basePath%>demo/findAll.shtml" class="btn btn-warning">findAll</a>
		    </div>
		    <br/>
		    <table class="table table-bordered">
              <thead>
                <tr>
                	<th>选择</th>
                	<th>序号</th>
					<th>id</th>
					<th>name</th>
					<th>操作</th>
                </tr>
              </thead>
              <tbody>
              	<tr>
              		<th><input type="checkbox"/></th>
              		<td>1</td>
					<td>aaa</td>
					<td>bbb</td>
                  	<td>
                  		<a href="#" class="btn btn-primary">修改</a>
                  		<a href="#" tbid="${tbid}" class="btn btn-danger">删除</a>
                  	</td>
               	</tr>
               	<tr>
               		<th><input type="checkbox"/></th>
               		<td>2</td>
					<td>aaa</td>
					<td>bbb</td>
                  	<td>
                  		<a href="#" class="btn btn-primary">修改</a>
                  		<a href="#" tbid="${tbid}" class="btn btn-danger">删除</a>
                  	</td>
               	</tr>
              </tbody>
            </table>
            	<div style="text-align: right;">
				  <ul class="pagination pagination-large"> 
				    <li class="disabled"><a href="#">Prev</a></li>
				    <li class="active"><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li><a href="#">Next</a></li>
				  </ul>
				</div>
		  </fieldset>
   </div><!-- container end -->
		
		
		<div class="btn-toolbar">
		  <div class="btn-group">
		    <a class="btn" href="#"><i class="icon-align-left"></i></a>
		    <a class="btn" href="#"><i class="icon-align-center"></i></a>
		    <a class="btn" href="#"><i class="icon-align-right"></i></a>
		    <a class="btn" href="#"><i class="icon-align-justify"></i></a>
		  </div>
		</div>

		<div class="tabbable"> <!-- Only required for left/right tabs -->
		  <ul class="nav nav-tabs">
		    <li class="active">
		    	<a href="#tab1" data-toggle="tab">Section 1</a>
		    </li>
		    <li><a href="#tab2" data-toggle="tab">Section 2</a></li>
		    <li><a href="#tab3" data-toggle="tab">Section 3</a></li>
		  </ul>
		  <div class="tab-content">
		    <div class="tab-pane active" id="tab1">
		      <p>I'm in Section 1.</p>
		    </div>
		    <div class="tab-pane" id="tab2">
		      <p>Howdy, I'm in Section 2.</p>
		    </div>
		     <div class="tab-pane" id="tab3">
		      <p>Howdy, I'm in Section 3.</p>
		    </div>
		  </div>
		</div>
		
<div id="myAlert" class="alert alert-success">
   <a href="#" class="close" data-dismiss="alert">&times;</a>
   <strong>成功！</strong>结果是成功的。
</div>
<div id="myAlert" class="alert alert-warning">
   <a href="#" class="close" data-dismiss="alert">&times;</a>
   <strong>警告！</strong>您的网络连接有问题。
</div>

<script type="text/javascript">
$(function(){
   $(".close").click(function(){
      $("#myAlert").alert();
   });
});  
</script> 




<div class="container" style="padding: 100px 50px 10px;" >
   <button type="button" class="btn btn-default" title="Popover title"  
      data-container="body" data-toggle="popover" data-placement="left" 
      data-content="左侧的 Popover 中的一些内容">
      左侧的 Popover
   </button>
   <button type="button" class="btn btn-primary" title="Popover title"  
      data-container="body" data-toggle="popover" data-placement="top" 
      data-content="顶部的 Popover 中的一些内容">
      顶部的 Popover
   </button>
   <button type="button" class="btn btn-success" title="Popover title"  
      data-container="body" data-toggle="popover" data-placement="bottom" 
      data-content="底部的 Popover 中的一些内容">
      底部的 Popover
   </button>
   <button type="button" class="btn btn-warning" title="Popover title"  
      data-container="body" data-toggle="popover" data-placement="right" 
      data-content="右侧的 Popover 中的一些内容">
      右侧的 Popover
   </button>
   </div>

   <script>
   	$(function(){
   		$("[data-toggle='popover']").popover();
   	});
   </script>
</div>

</div>



<canvas id="myChart" width="400" height="400"></canvas>
<script type="text/javascript">
//Get the context of the canvas element we want to select
var ctx = document.getElementById("myChart").getContext("2d");
//var myNewChart = new Chart(ctx).PolarArea(data);
new Chart(ctx).Bar(data,options);
//数据结构
var data = {
	labels : ["January","February","March","April","May","June","July"],
	datasets : [
		{
			fillColor : "rgba(220,220,220,0.5)",
			strokeColor : "rgba(220,220,220,1)",
			data : [65,59,90,81,56,55,40]
		},
		{
			fillColor : "rgba(151,187,205,0.5)",
			strokeColor : "rgba(151,187,205,1)",
			data : [28,48,40,19,96,27,100]
		}
	]
}

</script>

	</body>
</html>
