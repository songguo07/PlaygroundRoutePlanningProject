<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
<link rel="icon" type="image/png" href="img/favicon.png">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/style.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/alert/jquery.alert.css"/>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="js/bootstrap/respond.min.js"></script>
    <script src="js/bootstrap/html5shiv.js"></script>
    <![endif]-->
<script src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.easydrag.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/alert/jquery.alert.js"></script>
	
</head>
<body class="page-index">
	<div class="container" id="container">

		<div class="row top">
			<div class="col-lg-8 col-md-8 col-sm-7 col-left">
				<div class="name">
					<a href="index.jsp">游乐场路线规划</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-5 col-right">
				<nav>
					<ul class="list-inline" id="menu">
						 <li>
                        <a href="${pageContext.request.contextPath}/views/catalog/index.jsp">首页</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/views/catalog/blog.jsp">地图</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/SelectAnswerServlet">客服</a>
                    </li><!--                    <li class="last">-->
						<!--                        <a href="#"><img class="social" src="img/icon/icon-facebook.png" alt="facebook"></a>-->
						<!--                        <a href="#"><img class="social" src="img/icon/icon-twitter.png" alt="twitter"></a>-->
						<!--                    </li>-->
					</ul>
				</nav>
			</div>
		</div>
		<div class="row bottom">
			<div class="col-lg-8 col-md-8 col-sm-7 col-left">
				<div>
					<section>
						<div class="row text-center">
							<div class="col-lg-12">

								<!--activity image-->
								<img class="img-responsive" src="img/all.jpg"
									alt="Project header">

								<!--activity title -->
								<h1>使用指南</h1>
								<h1 class="spacer">__________</h1>

								<!--activity descritpion-->
								<p class="work">步骤：</p>
								<p class="steps">
									<!--  <a href="">1.选择偏爱类型</a><br/>
                                 <a href="">2.点击开始规划</a><br/>
                                 <a href="${pageContext.request.contextPath}/views/catalog/score_evaluate.jsp">3.结束规划打分</a><br/>
                             -->


								</p>
								<p class="steps">
									1.选择偏爱类型 <input type="checkbox" name="favorite" value="excite">
									刺激 &nbsp; <input type="checkbox" name="favorite"
										value="interact"> 互动 &nbsp; <input type="checkbox"
										name="favorite" value="happy"> 欢乐 &nbsp;

								</p>
								<p class="steps">
									<button id="startDesign">2.我已选择项目</button>
								</p>
								<p class="steps">
									<button id="getBestRoute">3.最佳路线</button>
								</p>
								<p class="steps">
									<button id="reSetHobby">4.重新选择游玩项目</button>
								</p>
							</div>
						</div>
					</section>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-5 col-right">
				<div id="scroll-shadow"></div>

				<h1 class="visible-xs section-header">娱乐设施</h1>
				<h1 class="visible-xs text-center spacer">__________</h1>

				<!--work choice-->
				<div class="item-choice">
					<a href="#" class="filter" data-filter="all">所有</a> <a href="#"
						class="filter" data-filter="excite">刺激</a> <a href="#"
						class="filter" data-filter="interact">互动</a> <a href="#"
						class="filter" data-filter="happy">欢乐</a>
						<a href="#" 
						class="filter" data-filter="recommend">推荐</a>
						
				</div>

				<section class="row" id="Grid">

					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact " id="1">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=1&fileName=cqxst"> <img class="img-responsive item-img"
									src="img/play/cqxsw.jpg" alt="Work 4">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=1&fileName=cqxst"><h4 class="item-title">船奇戏水滩</h4></a>
								<p class="item-category">宝藏湾</p>
								<p class="item-description">在“宝藏湾”的一艘海盗船残骸中探索戏水，感受互动乐趣。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="船奇戏水滩" name="1"> <font color="#00ff00">再看看</font><input
										type="radio" name="1" value="0" checked="checked">
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix excite " id="2">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=2&fileName=jlbhd"> <img class="img-responsive item-img"
									src="img/play/jlbhd.jpg" alt="Work 5">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=2&fileName=jlbhd"><h4 class="item-title">加勒比海盗-沉落宝藏之战</h4></a>
								<p class="item-category">宝藏湾</p>
								<p class="item-description">加入杰克船长的海盗队伍，向海洋进发，来一场寻宝之旅！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">刺激</a> , <a href="#">黑暗</a> ,
									<a href="#">所有身高</a> &nbsp;&nbsp;<font color="#00ff00">喜欢</font><input
										type="radio" value="加勒比海盗-沉落宝藏之战" name="2"> <font
										color="#00ff00">再看看</font><input type="radio" name="2"
										value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="3">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=3&fileName=tmhyfch"> <img class="img-responsive item-img"
									src="img/play/tmhyfch.jpg" alt="Work 6">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=3&fileName=tmhyfch"><h4 class="item-title">探秘海妖复仇号</h4></a>
								<p class="item-category">宝藏湾</p>
								<p class="item-description">登上真正的海盗船，体验海盗的刺激生活与惊险行动。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="探秘海妖复仇号" name="3"> <font color="#00ff00">再看看</font><input
										type="radio" name="3" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="4">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=4&fileName=txjdmz"> <img class="img-responsive item-img"
									src="img/play/txjdmz.jpg" alt="Work 7">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=4&fileName=txjdmz"><h4 class="item-title">探险家独木舟</h4></a>
								<p class="item-category">宝藏湾</p>
								<p class="item-description">登上探险家独木舟，开启在宝藏湾和探险岛的探险之旅。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">水花四溅</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="探险家独木舟" name="4"> <font color="#00ff00">再看看</font><input
										type="radio" name="4" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="5">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=5&fileName=thgttz"> <img class="img-responsive item-img"
									src="img/play/thgttz.jpg" alt="Work 8">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=5&fileName=thgttz"><h4 class="item-title">弹簧狗团团转</h4></a>
								<p class="item-category">皮克斯玩具总动员</p>
								<p class="item-description">坐上弹簧狗的螺旋形弹簧，和他欢快地围着大狗盘绕圈。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">旋转</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="弹簧狗团团转" name="5"> <font color="#00ff00">再看看</font><input
										type="radio" name="5" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="6">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=6&fileName=hdnzjnh"> <img class="img-responsive item-img"
									src="img/play/hdnzjnh.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=6&fileName=hdnzjnh"><h4 class="item-title">胡迪牛仔嘉年华</h4></a>
								<p class="item-category">皮克斯玩具总动员</p>
								<p class="item-description">跳上怀旧的西部马车，踏着欢快的音乐，一同摇摆。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">旋转</a> , <a href="#">81厘米或以上</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="胡迪牛仔嘉年华" name="6"> <font color="#00ff00">再看看</font><input
										type="radio" name="6" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="7">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=7&fileName=alsmyxjmg"> <img
									class="img-responsive item-img" src="img/play/alsmyxjmg.jpg"
									alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=7&fileName=alsmyxjmg"><h4 class="item-title">爱丽丝梦游仙境迷宫</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">穿越爱丽丝梦游仙境中蜿蜒的迷宫，参加疯狂茶会派对。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">所有身高</a> &nbsp;&nbsp;<font
										color="#00ff00">喜欢</font><input type="radio" value="爱丽丝梦游仙境迷宫"
										name="7"> <font color="#00ff00">再看看</font><input
										type="radio" name="7" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="8">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=8&fileName=jcqh"> <img class="img-responsive item-img"
									src="img/play/jcqh.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=8&fileName=jcqh"><h4 class="item-title">晶彩奇航</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">借助音乐、灯光和神奇魔法，为游客呈现迪士尼经典故事</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">缓速</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="晶彩奇航" name="8"> <font color="#00ff00">再看看</font><input
										type="radio" name="8" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="9">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=9&fileName=mythsj"> <img class="img-responsive item-img"
									src="img/play/mythsg.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=9&fileName=mythsj"><h4 class="item-title">漫游童话时光</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">穿过魔镜，进入奇幻世界：白雪公主的童话世界。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="漫游童话时光" name="9"> <font color="#00ff00">再看看</font><input
										type="radio" name="9" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix excite" id="10">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=10&fileName=qgxarksc"> <img
									class="img-responsive item-img" src="img/play/qgxarksc.jpg"
									alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=10&fileName=qgxarksc"><h4 class="item-title">七个小矮人矿山车</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">过山车项目，穿梭在白雪公主和七个小矮人钻石矿山中。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">刺激</a> , <a href="#">97厘米或以上</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="七个小矮人矿山车" name="10"> <font color="#00ff00">再看看</font><input
										type="radio" name="10" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="11">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=11&fileName=xfxtkqy"> <img class="img-responsive item-img"
									src="img/play/xfxtkqy.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=11&fileName=xfxtkqy"><h4 class="item-title">小飞侠天空奇遇</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">和小飞侠、奇妙仙子还有梦幻岛的同伴一起遨游天际。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">黑暗</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="小飞侠天空奇遇" name="11"> <font color="#00ff00">再看看</font><input
										type="radio" name="11" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="12">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=12&fileName=xxwnlxj"> <img class="img-responsive item-img"
									src="img/play/xxwnlxj.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=12&fileName=xxwnlxj"><h4 class="item-title">小熊维尼历险记</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">进入百亩森林，探索小熊维尼和朋友们的美妙世界！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">黑暗</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="小熊维尼历险记" name="12"> <font color="#00ff00">再看看</font><input
										type="radio" name="12" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="13">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=13&fileName=xzfmg"> <img class="img-responsive item-img"
									src="img/play/xzfmg.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=13&fileName=xzfmg"><h4 class="item-title">旋转疯蜜罐</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">和同伴一起，在自由控制的旋转中体验寻找美味的乐趣。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">旋转</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="旋转疯蜜罐" name="13"> <font color="#00ff00">再看看</font><input
										type="radio" name="13" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="14">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=14&fileName=ybg"> <img class="img-responsive item-img"
									src="img/play/ybg.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=14&fileName=ybg"><h4 class="item-title">迎宾阁</h4></a>
								<p class="item-category">梦幻世界</p>
								<p class="item-description">受到迪士尼皇室的问候，尽情享受一次美妙的邂逅吧！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="迎宾阁" name="14"> <font color="#00ff00">再看看</font><input
										type="radio" name="14" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="15">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=15&fileName=bsgnxjyj"> <img
									class="img-responsive item-img" src="img/play/bsgnxjyj.jpg"
									alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=15&fileName=bsgnxjyj"><h4 class="item-title">巴斯光年星际营救</h4></a>
								<p class="item-category">明日世界</p>
								<p class="item-description">投身战斗，竭尽全力消灭索克天王手下骇人的机器人部队！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="巴斯光年星际营救" name="15"> <font color="#00ff00">再看看</font><input
										type="radio" name="15" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix excite" id="16">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=16&fileName=cjsgl"> <img class="img-responsive item-img"
									src="img/play/cjsgl.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=16&fileName=cjsgl"><h4 class="item-title">创极速光轮-雪佛兰呈献</h4></a>
								<p class="item-category">明日世界</p>
								<p class="item-description">进入电子网络世界，随着极速光轮、极速转向，全力奔驰！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">刺激</a> , <a href="#">122厘米或以上</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="创极速光轮-雪佛兰呈献" name="16"> <font color="#00ff00">再看看</font><input
										type="radio" name="16" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<%-- <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="17">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=17&fileName=cj"> <img class="img-responsive item-img"
									src="img/play/cj.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=17&fileName=cj"><h4 class="item-title">创界：雪佛兰数字挑战</h4></a>
								<p class="item-category">明日世界</p>
								<p class="item-description">探索奇妙的未来驾驶世界，体验概念车与创世界尖端技术。</p>
								<hr>
								<p class="item-tags">
									<a href="#">互动项目</a> , <a href="#">所有身高</a> &nbsp;&nbsp;<font
										color="#00ff00">喜欢</font><input type="radio"
										value="创界：雪佛兰数字挑战" name="17"> <font color="#00ff00">再看看</font><input
										type="radio" name="17" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div> --%>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="18">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=18&fileName=pqbbfxq"> <img class="img-responsive item-img"
									src="img/play/pqbbfxq.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=18&fileName=pqbbfxq"><h4 class="item-title">喷气背包飞行器</h4></a>
								<p class="item-category">明日世界</p>
								<p class="item-description">加速，再加速，带着这次未来之旅令人激动的兴奋感出发！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">旋转</a> , <a href="#">112厘米或以上</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="喷气背包飞行器" name="18"> <font color="#00ff00">再看看</font><input
										type="radio" name="18" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="19">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=19&fileName=tkxhsdq"> <img class="img-responsive item-img"
									src="img/play/tkxhsdq.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=19&fileName=tkxhsdq"><h4 class="item-title">太空幸会史迪奇</h4></a>
								<p class="item-category">明日世界</p>
								<p class="item-description">请和这个蓝色小外星人打招呼吧，他保证让您捧腹大笑！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="太空幸会史迪奇" name="19"> <font color="#00ff00">再看看</font><input
										type="radio" name="19" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="20">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=20&fileName=hxqxzmm"> <img class="img-responsive item-img"
									src="img/play/hxqxzmm.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=20&fileName=hxqxzmm"><h4 class="item-title">幻想曲旋转木马</h4></a>
								<p class="item-category">奇想花园</p>
								<p class="item-description">乘坐飞马，伴随幻想曲中的交响乐，回旋在梦幻世界里。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">旋转</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="幻想曲旋转木马" name="20"> <font color="#00ff00">再看看</font><input
										type="radio" name="20" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="21">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=21&fileName=mwyxzb"> <img class="img-responsive item-img"
									src="img/play/mwyxzb.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=21&fileName=mwyxzb"><h4 class="item-title">漫威英雄总部</h4></a>
								<p class="item-category">奇想花园</p>
								<p class="item-description">深入漫威英雄总部，您将遇到一些自己喜爱的漫威英雄！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="漫威英雄总部" name="21"> <font color="#00ff00">再看看</font><input
										type="radio" name="21" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="22">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=22&fileName=mqjlb"> <img class="img-responsive item-img"
									src="img/play/mqjlb.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=22&fileName=mqjlb"><h4 class="item-title">米奇俱乐部</h4></a>
								<p class="item-category">奇想花园</p>
								<p class="item-description">在与举世闻名的米奇会面之前，参观一个魔法画展吧！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="米奇俱乐部" name="22"> <font color="#00ff00">再看看</font><input
										type="radio" name="22" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="23">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=23&fileName=xfx"> <img class="img-responsive item-img"
									src="img/play/xfx.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=23&fileName=xfx"><h4 class="item-title">小飞象</h4></a>
								<p class="item-category">奇想花园</p>
								<p class="item-description">乘着小飞象在空中尽情飞翔！他是奇想花园的超级明星。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">旋转</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="小飞象" name=23"> <font color="#00ff00">再看看</font><input
										type="radio" name="23" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="24">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=24&fileName=ax"> <img class="img-responsive item-img"
									src="img/play/ax.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=24&fileName=ax"><h4 class="item-title">翱翔·飞越地平线</h4></a>
								<p class="item-category">探险岛</p>
								<p class="item-description">以前所未有的飞行方式见证这个神奇的世界吧！</p>
								<hr>
								<p class="item-tags">
									<a href="#">室内</a> , <a href="#">102厘米或以上</a> &nbsp;&nbsp;<font
										color="#00ff00">喜欢</font><input type="radio" value="翱翔·飞越地平线"
										name="24"> <font color="#00ff00">再看看</font><input
										type="radio" name="24" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix happy" id="25">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=25&fileName=gjtsy"> <img class="img-responsive item-img"
									src="img/play/gjtsy.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=25&fileName=gjtsy"><h4 class="item-title">古迹探索营</h4></a>
								<p class="item-category">探险岛</p>
								<p class="item-description">穿越绳索挑战道，踏上探索步行道，发掘部落遗迹。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">所有身高</a> &nbsp;&nbsp;<font
										color="#00ff00">喜欢</font><input type="radio" value="古迹探索营"
										name="25"> <font color="#00ff00">再看看</font><input
										type="radio" name="25" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix interact" id="26">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=26&fileName=hxjyh"> <img class="img-responsive item-img"
									src="img/play/hxjyh.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=26&fileName=hxjyh"><h4 class="item-title">欢笑聚友会</h4></a>
								<p class="item-category">探险岛</p>
								<p class="item-description">您在岛上会遇到一些丛林故事里的可爱迪士尼朋友，比如狮子王里的朋友们，甚至可能在现场与疯狂动物城中的朋友们见面！
								</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">互动项目</a> , <a href="#">所有身高</a>
									&nbsp;&nbsp;<font color="#00ff00">喜欢</font><input type="radio"
										value="欢笑聚友会" name="26"> <font color="#00ff00">再看看</font><input
										type="radio" name="26" value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix excite" id="27">
						<div class="panel panel-default item">
							<div class="panel-heading">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=27&fileName=lmspl"> <img class="img-responsive item-img"
									src="img/play/lmspl.jpg" alt="Work 9">
								</a>
							</div>
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=27&fileName=lmspl"><h4 class="item-title">雷鸣山漂流</h4></a>
								<p class="item-category">探险岛</p>
								<p class="item-description">踏上刺激的漂筏之旅，深入黑暗的深渊，和凶猛的巨兽赛跑，
									在激流中辗转翻腾。</p>
								<hr>
								<p class="item-tags">
									<a href="#">室外</a> , <a href="#">刺激</a> , <a href="#">水花四溅</a>
									, <a href="#">107厘米或以上</a> &nbsp;&nbsp;<font color="#00ff00">喜欢</font><input
										type="radio" value="雷鸣山漂流" name="27"> <font
										color="#00ff00">再看看</font><input type="radio" name="27"
										value="0" checked="checked">

								</p>
							</div>
						</div>
					</div>
				</section>
				<a class="btn btn-block scroll-top visible-xs"> <img
					src="img/icon/icon-chevron.png" alt="Scroll top">
				</a>
				<div class="panel-footer">
					<a id="withDrawl" style="background-color: red"
						class="btn btn-grey btn-lg btn-block">退出</a>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>

	<!-- FASTCLICK -->
	<script src="js/plugins/fastclick/fastclick.js"></script>
	<!-- SMOOTH SCROLL -->
	<script src="js/plugins/smooth-scroll/jquery.smooth-scroll.min.js"></script>
	<!-- MIXITUP -->
	<script src="js/plugins/mixitup/jquery.mixitup.min.js"></script>

	<script src="js/main.js"></script>
</body>
<script type="text/javascript">
	$(function(){
		jAlert("请先选择您感兴趣的类型哦~");
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
		$("#startDesign").click(function(){
			 var i=0;
			 var hobby=new Array();
			 $('input[type="radio"]:checked').each(function(){
				 if($(this).val() != 0){
					 hobby[i++]=$(this).val();
				 }
			 });
			 $.ajax({
					url:result+"/DesignRoute",
					cache:false,
					dataType: "json",
					traditional: true,
					type: "POST",
					data:{selectProjectName : hobby},
					success:function(result){
					}
				}); 
			 if(i==0){
				 jAlert("您还没有选择任何项目哦~~~");
			 }else{
				  jAlert("选择成功，如果选择完毕请点击'最佳路线'！");
			 }
		});
		//最佳路线
		$("#getBestRoute").click(function(){
			 var typeArray=new Array();
			 var i=0;
			  $.each($('input:checkbox:checked'),function(){
	                typeArray[i++]=$(this).val();
	            });
			  if(typeArray!=''){
				  $.ajax({
						 url:result+"/GetBestRoute",
		                 traditional: true,
		                 type: "POST",
		                 cache : false,
		                 data:{data : typeArray},
						 success:function(result){
								 window.location.href="route.jsp";
						 }
				 });
			  }else{
				  jAlert("请选择您感兴趣的类型");
			  }
			 
		});
	 	$("#withDrawl").click(function(){
	 		jConfirm('你确定要退出吗？', '请确定',function(res){
				if(res){
					$.ajax({
						 url:result+"/DeleteAllHobby",
		                traditional: true,
		                type: "POST",
		                cache : false,
						 success:function(result){
							 if(result == 'error'){
								 jAlert("退出失败，请稍后重试");
							 }else{
								 location.href = result;
							 }
						}
					 });
				}
	 		});
	 		return false;
		}); 
	 	$("#recommend").click(function(){
	 		 $.ajax({
				 url:result+"/RecommedHobby",
                 traditional: true,
                 type: "POST",
                 cache : false,
                 dataType:'JSON',
				 success:function(result){
				    jQuery.each(result,function(key,value){ 
				    	var id=value[0];
				    	$("#"+id).addClass("recommend");
				    	
	               }) 
				}
			 });
	 	});
	 	$("#reSetHobby").click(function(){
			 $.ajax({
				 url:result+"/ClearHobbyByUserId",
                 traditional: true,
                 type: "POST",
                 cache : false,
				 success:function(result){
					result = result.replace(/\s*/g,"");
					 if(result == 'error'){
						 jAlert("重新规划请求失败，请稍后重试");
					 }else{
						 jConfirm('你确定要重新规划路线吗？', '请确定',function(res){
							 location.href = result;
						 });
					 }
				}
			 });
		}); 
	 	
	 	
	 	
	});
		
	</script>
</html>
