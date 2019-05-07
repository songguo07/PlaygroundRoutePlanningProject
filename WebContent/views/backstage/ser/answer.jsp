<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>客服聊天</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/05/styles/style.css">
<script src="http://www.weizoom.com/static/resources/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<div class="dialogue-wrapper">
    
    <div class="dialogue-main"  style="margin-right: 350px">
        <div class="dialogue-header">
            <i id="btn_close" class="dialogue-close">></i>
            <div class="dialogue-service-info">
                <i class="dialogue-service-img">头像
				</i>
                <div class="dialogue-service-title">
                    <p class="dialogue-service-name">${ver.verName }客服</p>
                    <p class="dialogue-service-detail">松果科技有限公司客服支持平台</p>
                </div>
            </div>
        </div>
        <div id="dialogue_contain" class="dialogue-contain">
        <c:set var="times" value="0"></c:set>
            <c:forEach items="${consultList }" var="question">
            <c:choose>
            	<c:when test="${question.flag=='1' }">
            	<c:choose>
            		<c:when test="${question.say_id==null }">
            			<p class="dialogue-service-contain"><span class="dialogue-text dialogue-service-text">${question.content }</span></p>
            		</c:when>
            		<c:otherwise>
            			<p class="dialogue-customer-contain"><span class="dialogue-text dialogue-service-text">${question.content }</span></p>
            		</c:otherwise>
            		</c:choose>
            	</c:when>
            	<c:otherwise>
            		 <c:if test="${times==0 }">
			            <p style="text-align: center;color:black;">以上为历史消息</p>
		            	<c:set value="1" var="times"></c:set>
	            	</c:if>
		            	<c:choose>
		            <c:when test="${question.say_id==null }">
			            <p class="dialogue-service-contain"><span class="dialogue-text dialogue-service-text">${question.content }</span></p>
	            	</c:when>
	            	<c:otherwise>
	            		<p class="dialogue-customer-contain"><span class="dialogue-text dialogue-service-text">${question.content }</span></p>
	            	</c:otherwise>
	            	</c:choose>
            	</c:otherwise>
            </c:choose>
            </c:forEach>
            <c:if test="${times==0 }">
	            <p style="text-align: center;color:black;">以上为历史消息</p>
	           	<c:set value="1" var="times"></c:set>
          	</c:if>
        </div>
       <form action="${pageContext.request.contextPath }/InsertQuestionServlet" method="post">
        <div class="dialogue-submit">
            <p id="dialogue_hint" class="dialogue-hint"><span class="dialogue-hint-icon">!</span><span class="dialogue-hint-text">发送内容不能为空</span></p>
            <input id="dialogue_input" name="content" class="dialogue-input-text" placeholder="请输入您的问题，按Enter键提交（shift+Enter换行）"></input>
            <div class="dialogue-input-tools" style="text-align: center; line-height: 80px;" >
             	<a href="http://localhost:8080/playgroundRoutePlanning/views/catalog/index.jsp">返回</a>
            </div>
        </div>
        </form>
    </div>
</div>
<script>
    var doc = document;
    // 模拟一些后端传输数据

    var dialogueInput = doc.getElementById('dialogue_input'),
        dialogueContain = doc.getElementById('dialogue_contain'),
        dialogueHint = doc.getElementById('dialogue_hint'),
        btnOpen = doc.getElementById('btn_open'),
        btnClose = doc.getElementById('btn_close'),
        timer,
        timerId,
        shiftKeyOn = false;  // 辅助判断shift键是否按住


    dialogueInput.addEventListener('keydown', function(e) {
        var e = e || window.event;
        if (e.keyCode == 16) {
            shiftKeyOn = true;
        }
        if (shiftKeyOn) {
            return true;
        } else if (e.keyCode == 13 && dialogueInput.value == '') {
            // console.log('发送内容不能为空');
            // 多次触发只执行最后一次渐隐
            setTimeout(function() {
                fadeIn(dialogueHint);
                clearTimeout(timerId)
                timer = setTimeout(function() {
                    fadeOut(dialogueHint)
                }, 2000);
            }, 10);
            timerId = timer;
            return true;
        } else if (e.keyCode == 13) {
            var nodeP = doc.createElement('p'),
                nodeSpan = doc.createElement('span');
            nodeP.classList.add('dialogue-customer-contain');
            nodeSpan.classList.add('dialogue-text', 'dialogue-customer-text');
            nodeSpan.innerHTML = dialogueInput.value;
            nodeP.appendChild(nodeSpan);
            dialogueContain.appendChild(nodeP);
            dialogueContain.scrollTop = dialogueContain.scrollHeight;
            submitCustomerText(dialogueInput.value);
        }
    });

    dialogueInput.addEventListener('keyup', function(e) {
        var e = e || window.event;
        if (e.keyCode == 16) {
            shiftKeyOn = false;
            return true;
        }
        if (!shiftKeyOn && e.keyCode == 13) {
            dialogueInput.value = null;
        }
    });


    // 渐隐
    function fadeOut(obj) {
        var n = 100;
        var time = setInterval(function() {
            if (n > 0) {
                n -= 10;
                obj.style.opacity = '0.' + n;
            } else if (n <= 30) {
                obj.style.opacity = '0';
                clearInterval(time);
            }
        }, 10);
        return true;
    }

    // 渐显
    function fadeIn(obj) {
        var n = 30;
        var time = setInterval(function() {
            if (n < 90) {
                n += 10;
                obj.style.opacity = '0.' + n;
            } else if (n >= 80) {
                
                obj.style.opacity = '1';
                clearInterval(time);
            }
        }, 100);
        return true;
    }
</script>
</body>
</html>