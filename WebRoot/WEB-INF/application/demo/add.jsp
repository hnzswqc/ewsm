<!-- <%=request.getRequestURI()%> -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
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
  	<div class="container-fluid" style="margin-top: 30px;">
		<div class="container-fluid">
			<div class="row">
				<div class="span12">
					<div class="panel panel-primary">
					   <div class="panel-heading">
					      <h3 class="panel-title">
					 		     ${empty demo.id ? '添加' : '修改'}demo
					      </h3>
					   </div>
					   <div class="panel-body">
						   <form class="form-horizontal" id="addForm">
						 <div class="form-group">
						      <label for="firstname" class="col-sm-2 control-label">用户Id</label>
						      <div class="col-sm-10">
						         <input type="text" class="form-control" id="id" 
						            placeholder="请输入id" name="id" value="${demo.id }" placeholder="请输入id号" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
						      </div>
						   </div>
						   <div class="form-group">
						      <label for="lastname" class="col-sm-2 control-label">用户姓名</label>
						      <div class="col-sm-10">
						         <input type="text" class="form-control" id="name" name="name" value="${demo.name }"
						            placeholder="请输入姓名" > 
						      </div>
						   </div>
						   <div class="form-group">
						      <div class="col-sm-offset-2 col-sm-10">
						           <button type="submit" id="saveBtn" class="btn btn-primary" >保存</button>
						      <c:if test="${!empty demo.id}">
						     	 <button type="button" onclick="javascript:del();" class="btn btn-danger">删除</button>
						      </c:if>
						      <button type="button" class="btn btn-default" onclick="javascript:window.location.href='<%=basePath %>demo/index.shtml'">返回</button>
						      </div>
						   </div>
					</form>
					   </div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>

	
	
	
	<script type="text/javascript">


	$(document).ready(function() {
	    /**
	     * 下面是进行插件初始化
	     * 你只需传入相应的键值对
	     * */
	    $('#addForm').bootstrapValidator({
	            message: 'This value is not valid',
	            feedbackIcons: {/*输入框不同状态，显示图片的样式*/
	                valid: 'glyphicon glyphicon-ok',
	                invalid: 'glyphicon glyphicon-remove',
	                validating: 'glyphicon glyphicon-refresh'
	            },
	            fields: {/*验证*/
	                id: {/*键名username和input name值对应*/
	                    message: 'The username is not valid',
	                    validators: {
	                        notEmpty: {/*非空提示*/
	                            message: 'id不能为空'
	                        },
	                        stringLength: {/*长度提示*/
	                            min: 6,
	                            max: 30,
	                            message: 'id长度必须在6到30之间'
	                        }/*最后一个没有逗号*/
	                    }
	                },
	                name: {
	                    message:'用户名不能为空',
	                    validators: {
	                        notEmpty: {
	                            message: '用户名不能为空'
	                        },
	                        stringLength: {
	                            min: 6,
	                            max: 30,
	                            message: '用户名长度必须在6到30之间'
	                        }
	                    }
	                }
	            }
	        }).on('success.form.bv', function(e) {
	            // Prevent form submission
	            e.preventDefault();

	            // Get the form instance
	            var $form = $(e.target);

	            // Get the BootstrapValidator instance
	            var bv = $form.data('bootstrapValidator');

	            var url = "<%=basePath%>demo/add.shtml";
				<c:if test="${empty demo.id}">
				 	url = "<%=basePath%>demo/add.shtml";
				</c:if>
				<c:if test="${!empty demo.id}">
				 	url = "<%=basePath%>demo/update.shtml";
				</c:if>
				
	            $.ajax({
					url:url,
					type:'POST',
					data:$form.serialize(),
					dataType:'JSON',
					success:function(json){
						if(json.success){
						    Ewin.alert({ message: "操作成功！" }).on(function (e) {
						    	window.location.href="<%=basePath %>demo/index.shtml";
				     		});
				     		
						}else{
							Ewin.alert({ message: "操作成功！" });
						}
					},
					error:function(e){
						Ewin.alert({ message: "网络出现异常！" });
					}
				});
	            
				

				
	        });
	});

		//删除
		function del(){
			 Ewin.confirm({ message: "<span style='color:red;font-weight:bold;'>确定要删除吗？</span>" }).on(function (e) {
				 if(!e){
					 return;
		 		 }
				  $.ajax({
						url:'<%=basePath%>demo/delete.shtml',
						type:'POST',
						data:{"ids":"${demo.id}"},
						dataType:'JSON',
						success:function(json){
							if(json.success){
								  Ewin.alert({ message: "删除成功！" }).on(function (e) {
								    	window.location.href="<%=basePath %>demo/index.shtml";
						     	  });
							}else{
								Ewin.alert({ message: "删除失败！" });
							}
						},
						error:function(e){
							Ewin.alert({ message: "操作出现异常！" }); 
						}
					});
			  });
				  
		}

			
	</script>
</html>
