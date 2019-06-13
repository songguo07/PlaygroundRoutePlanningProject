<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>修改密码</title>
<link href="${pageContext.request.contextPath}/static/03/css/mystyle.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/static/03/css/style_password.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="App Loction Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>


<!--webfonts-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/alert/jquery.alert.css"/>
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<!-- Javascript -->
<script type="text/javascript"  src="${pageContext.request.contextPath}/static/03/assets/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"  src="${pageContext.request.contextPath}/static/03/js/bootstrap.min.js"></script>
<script type="text/javascript"  src="${pageContext.request.contextPath}/static/03/assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript"  src="${pageContext.request.contextPath}/static/03/assets/js/scripts.js"></script>
<script type="text/javascript"  src="${pageContext.request.contextPath}/static/03/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.easydrag.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.alert.js"></script>

<script type="text/javascript">
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

$(function(){
	//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
    var curWwwPath=window.document.location.href;
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
    var pathName=window.document.location.pathname;
    var pos=curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083
    var localhostPaht=curWwwPath.substring(0,pos);
    //获取带"/"的项目名，如：/uimcardprj
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
   	var result=localhostPaht+projectName;
    
	
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
		var phone = $.trim($("#userTelno").val());
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
	
});


</script>
</head>
<body>
	<h1>松果服务</h1>
		<div class="app-location">
			<h2>修改密码</h2>
			<div class="line"><span></span></div>
			<div class="location"><img src="${pageContext.request.contextPath}/static/03/img/location.png" class="img-responsive" alt="" /></div>
			<form action="${pageContext.request.contextPath}/DoChangePassword" method="post"  id="myForm">
				<input type="text" name="userTelno" id="userTelno" class="text" placeholder="注册手机号" >
				<input type="password" id="userPassword" name="userPassword" placeholder="请输入密码" >
				<input type="password" id="againUserPassword"  name="againUserPassword" placeholder="确认密码" >
				<input  name="reallyCheckNumber" type="hidden" required="true" id="reallyCheckNumber">
				<div class="code1">
				<input placeholder="请输入验证码" name="checkNumber" type="text" required="true">			
				<input id="btnSendCode1"  type="button" class="btn btn-default" value="获取验证码" />
				</div>	
				<!-- 	<cite>
				<input type="button" id="getCheckNumber" class="loginbtn" value="点击获取验证码" />
				</cite> -->
				<div class="submit"><input type="submit" onclick="myFunction()" value="提交" ></div>
				<div class="clear"></div>
				<div class="new">
					<div class="clear"></div>
				</div>
			</form>
		</div>
	<!--start-copyright-->
   		<div class="copy-right">
		</div>
	<!--//end-copyright-->
	

</body>
</html>