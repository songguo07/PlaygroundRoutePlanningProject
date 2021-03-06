 <%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册</title>

<!-- CSS -->
<link href="${pageContext.request.contextPath}/static/03/css/mystyle.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/assets/css/form-elements.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/assets/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/alert/jquery.alert.css"/>
<!-- Javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.easydrag.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.alert.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/03/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/03/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/03/assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/03/assets/js/scripts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/03/js/jquery.validate.js"></script>

	
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/03/assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-57-precomposed.png">


</head>

<body>

<!-- Content -->
<div class="top-content">
	
	<div class="inner-bg">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<a class="登录" href="login.jsp"></a>
					<h1><strong>松果公司</strong> 游乐园线路规划</h1>
					<div class="description">
						<p>
							松果服务，给你最优最快的路线，让您在游乐场天地不用等待
							快乐生活 <strong>松果</strong>, 是您无二的选择！
						</p>
					</div>
					<div class="top-big-link">
						<a class="btn btn-link-1 launch-modal" href="#" data-modal-id="modal-register">立即注册</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
<!-- MODAL -->
<div class="modal fade" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h3 class="modal-title" id="modal-register-label">立即注册</h3>
				<p>请输入您的信息：</p>
			</div>
			
			<div class="modal-body">
				
				<form role="form" action="${pageContext.request.contextPath}/DoRegist" method="post" class="registration-form" id="myForm">
					<div class="form-group">
						<input type="text" name="userTelNo" placeholder="请输入手机号" class="form-first-name form-control" id="tel_no">
					</div>
					<div class="form-group">
						<input type="text" name="userNickname" placeholder="请输入昵称" class="form-last-name form-control" id="nickname">
					</div>
					<div class="form-group">
						<input type="password" name="userPassword" placeholder="请输入密码" class="form-last-name form-control" id="userPassword">
					</div>
					<div class="form-group">
						<input type="password" name="againUserPassword" placeholder="请再次输入密码" class="form-last-name form-control" id="againUserPassword" >
					</div>
					<div class="form-group">
						<input  name="reallyCheckNumber" type="hidden" required="true" id="reallyCheckNumber">
						<input   placeholder="请输入验证码" name="checkNumber" type="text" required="true">			
						<input id="btnSendCode1"  type="button" class="btn btn-default" value="获取验证码" />
					</div>
					
					<button type="submit" class="btn">提交!</button>
				</form>
				
			</div>
			
		</div>
	</div>
</div>



<!--[if lt IE 10]>
	<script src="assets/js/placeholder.js"></script>
		$("#password").click(function(){
			alert("aaaaaaaaa");
		});
<![endif]-->
<script type="text/javascript">
	$(function(){
	
		$( "#myForm" ).validate({
			  rules: {
			    userPassword: "required",
			    againUserPassword: {
			      equalTo: "#userPassword"
			    }
			  },
			  //重设提示信息
			    messages:{
			    	userPassword: "请输入密码",
			    	againUserPassword: "密码输入不一致"
			    }
			});
		//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
	    var curWwwPath=window.document.location.href;
	    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
	    var pathName=window.document.location.pathname;
	    var pos=curWwwPath.indexOf(pathName);
	    //获取主机地址，如： http://localhost:8083
	    var localhostPaht=curWwwPath.substring(0,pos);
	    //获取带"/"的项目名，如：/uimcardprj
	    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
	    result=localhostPaht+projectName;
		var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;//手机号正则 
		var count = 60; //间隔函数，1秒执行
		var InterValObj1; //timer变量，控制时间
		var curCount1;//当前剩余秒数
		/*第一*/
		function SetRemainTime1() {
			if (curCount1 == 0) {                
				window.clearInterval(InterValObj1);//停止计时器
				$("#btnSendCode1").removeAttr("disabled");//启用按钮
				$("#btnSendCode1").val("重新发送");
			}
			else {
				curCount1--;
				$("#btnSendCode1").val( + curCount1 + "秒再获取");
			}
		} 
		$("#btnSendCode1").click(function(){
			curCount1 = count;		 		 
			var phone = $.trim($("#tel_no").val());
			if (!phoneReg.test(phone)) {
				jAlert(" 请输入有效的手机号码"); 
				return false;
			}
			//设置button效果，开始计时
			$("#btnSendCode1").attr("disabled", "true");
			$("#btnSendCode1").val( + curCount1 + "秒再获取");
			InterValObj1 = window.setInterval(SetRemainTime1, 1000); //启动计时器，1秒执行一次
			//向后抬输入数据
			 $.ajax({
				url:result+"/AliCheckNumberServlet",
				cache:false,
				data:"userTelno="+phone,
				success:function(result){
					$("#reallyCheckNumber").val(result);
				}
			}); 
			
		});
		
	})


</script>
</body>
</html>