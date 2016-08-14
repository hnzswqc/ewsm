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
    
    <title>chart</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@ include file="/common/bootstrap.jsp"%>
	<style type="text/css">
		.right{
			border-bottom: 0px solid #dfdfdf;position: absolute;right:20;top: 2px;
		}
	</style>
  </head>
  
  <body>
<div class="panel panel-primary" style="margin:10px; ">
   <div class="panel-heading">
      <h3 class="panel-title">
 		    统计图展示
      </h3>
   </div>
  <div class="panel-body">
  <!-- 第一行开始 -->
  	<div class="container-fluid">
	<div class="row clearfix">
		<!-- 第一个面板开始 -->
		<div class="col-md-4 column">
			<div class="panel panel-primary">
			   <div class="panel-heading">
			     <h3 class="panel-title">
					line
					<div class="right">
						 <button class="btn btn-primary" type="button">刷新</button>
					</div>
				</h3>
				
			   </div>
			  <div class="panel-body">
			   	<canvas id="Line" width="400" height="400"></canvas>
			   	<script type="text/javascript">
			   	var data = {
			   			labels : ["January","February","March","April","May","June","July"],
			   			datasets : [
			   				{
			   					fillColor : "rgba(220,220,220,0.5)",
			   					strokeColor : "rgba(220,220,220,1)",
			   					pointColor : "rgba(220,220,220,1)",
			   					pointStrokeColor : "#fff",
			   					data : [65,59,90,81,56,55,40]
			   				},
			   				{
			   					fillColor : "rgba(151,187,205,0.5)",
			   					strokeColor : "rgba(151,187,205,1)",
			   					pointColor : "rgba(151,187,205,1)",
			   					pointStrokeColor : "#fff",
			   					data : [28,48,40,19,96,27,100]
			   				}
			   			]
			   		};
			   	var ctx = document.getElementById("Line").getContext("2d");
			   	new Chart(ctx).Line(data,{scaleFontColor : "#666",pointDot : true,scaleOverlay : true,scaleOverride : false
				   	,scaleSteps : 11});
			   	</script>
			   </div>
			</div>
		</div>
		<!-- 第二个面板开始 -->
		<div class="col-md-4 column">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						Bar
					</h3>
				</div>
				<div class="panel-body">
				<canvas id="Bar" width="400" height="400"></canvas>
			   	<script type="text/javascript">
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
			   		};
			   	var ctx = document.getElementById("Bar").getContext("2d");
			   	new Chart(ctx).Bar(data,null);
			   	</script>
				</div>
			</div>
		</div>
		<!-- 第三个面板开始 -->
		<div class="col-md-4 column">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						Radar
					</h3>
				</div>
				<div class="panel-body">
				<canvas id="Radar" width="400" height="400"></canvas>
			   	<script type="text/javascript">
			   	var data = {
			   			labels : ["Eating","Drinking","Sleeping","Designing","Coding","Partying","Running"],
			   			datasets : [
			   				{
			   					fillColor : "rgba(220,220,220,0.5)",
			   					strokeColor : "rgba(220,220,220,1)",
			   					pointColor : "rgba(220,220,220,1)",
			   					pointStrokeColor : "#fff",
			   					data : [65,59,90,81,56,55,40]
			   				},
			   				{
			   					fillColor : "rgba(151,187,205,0.5)",
			   					strokeColor : "rgba(151,187,205,1)",
			   					pointColor : "rgba(151,187,205,1)",
			   					pointStrokeColor : "#fff",
			   					data : [28,48,40,19,96,27,100]
			   				}
			   			]
			   		};
			   	var ctx = document.getElementById("Radar").getContext("2d");
			   	new Chart(ctx).Radar(data,{scaleFontColor : "#666",pointDot : true});
			   	</script>
				</div>
			</div>
		</div>
	</div>
</div>
   
   <!-- 第二行 -->
   	<div class="container-fluid">
	<div class="row clearfix">
		<div class="col-md-4 column">
			<div class="panel panel-primary">
			   <div class="panel-heading">
			      <h3 class="panel-title">
			 		   	PolarArea
			      </h3>
			   </div>
			  <div class="panel-body">
			   	<canvas id="PolarArea" width="400" height="400"></canvas>
			   	<script type="text/javascript">
			   	var data = [
			   	     	{
			   	     		value : 30,
			   	     		color: "#D97041"
			   	     	},
			   	     	{
			   	     		value : 90,
			   	     		color: "#C7604C"
			   	     	},
			   	     	{
			   	     		value : 24,
			   	     		color: "#21323D"
			   	     	},
			   	     	{
			   	     		value : 58,
			   	     		color: "#9D9B7F"
			   	     	},
			   	     	{
			   	     		value : 82,
			   	     		color: "#7D4F6D"
			   	     	},
			   	     	{
			   	     		value : 8,
			   	     		color: "#584A5E"
			   	     	}
			   	     ];
			   	var ctx = document.getElementById("PolarArea").getContext("2d");
			   	new Chart(ctx).PolarArea(data,{animateScale : true});
			   	</script>
			   </div>
			</div>
		</div>
		<div class="col-md-4 column">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						Pie
					</h3>
				</div>
				<div class="panel-body">
				<canvas id="Pie" width="400" height="400"></canvas>
			   	<script type="text/javascript">
			   	var data = [
			   	     	{
			   	     		value: 30,
			   	     		color:"#F38630"
			   	     	},
			   	     	{
			   	     		value : 50,
			   	     		color : "#E0E4CC"
			   	     	},
			   	     	{
			   	     		value : 100,
			   	     		color : "#69D2E7"
			   	     	}			
			   	     ];
			   	var ctx = document.getElementById("Pie").getContext("2d");
			   	new Chart(ctx).Pie(data,null);
			   	</script>
				</div>
			</div>
		</div>
		<div class="col-md-4 column">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						Doughnut
					</h3>
				</div>
				<div class="panel-body">
				<canvas id="Doughnut" width="400" height="400"></canvas>
			   	<script type="text/javascript">
			   	var data = [
			   	     	{
			   	     		value: 30,
			   	     		color:"#F7464A"
			   	     	},
			   	     	{
			   	     		value : 50,
			   	     		color : "#E2EAE9"
			   	     	},
			   	     	{
			   	     		value : 100,
			   	     		color : "#D4CCC5"
			   	     	},
			   	     	{
			   	     		value : 40,
			   	     		color : "#949FB1"
			   	     	},
			   	     	{
			   	     		value : 120,
			   	     		color : "#4D5360"
			   	     	}

			   	     ];
			   	var ctx = document.getElementById("Doughnut").getContext("2d");
			   	new Chart(ctx).Doughnut(data,null);
			   	</script>
				</div>
			</div>
		</div>
	</div>
</div>


   </div>
</div>
			
			


	</body>
	<script type="text/javascript">
		
	</script>
</html>
