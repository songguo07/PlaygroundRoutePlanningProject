<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>加勒比海盗</title>
		<link rel="icon" type="image/png" href="img/favicon.png">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath}/views/catalog/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="${pageContext.request.contextPath}/static/02/css/style.css" rel="stylesheet" media="screen">
		<link href="${pageContext.request.contextPath}/views/catalog/css/style.css" rel="stylesheet" media="screen">
		<script src="${pageContext.request.contextPath}/static/03/assets/js/jquery-1.11.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>

		<script src="${pageContext.request.contextPath}/views/catalog/js/jquery.js"></script>
		<!-- FASTCLICK -->
		<script src="${pageContext.request.contextPath}/views/catalog/js/plugins/fastclick/fastclick.js"></script>
		<!-- SMOOTH SCROLL -->
		<script src="${pageContext.request.contextPath}/views/catalog/js/plugins/smooth-scroll/jquery.smooth-scroll.min.js"></script>
		<script src="${pageContext.request.contextPath}/views/catalog/js/plugins/mixitup/jquery.mixitup.min.js"></script>

		<script src="${pageContext.request.contextPath}/views/catalog/js/main.js"></script>
		<script type="text/javascript">
			
		</script>

	</head>

	<body class="page-project-example">
		<div class="container" id="container">
			<div class="row top">
				<div class="col-lg-8 col-md-8 col-sm-7 col-left">
					<div class="name">
						<a href="index.html">游乐场路线规划</a>
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
                        <a href="/playgroundRoutePlanning/SelectAnswerServlet">客服</a>
                    </li>
							<!--                    <li class="last">-->
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
							<!--banner image-->
							<img src="${pageContext.request.contextPath}/views/catalog/img/play/jlbhd.jpg" alt="" class="img-responsive">

							<!--project title-->
							<h1>加勒比海盗-沉落宝藏之战</h1>
							<h1 class="spacer">___</h1>

							<!--project tags-->
							<p class="item-tags">
								<a href="#">室内</a> ,
								<a href="#">刺激</a> ,
								<a href="#">黑暗</a> ,
								<a href="#">所有身高</a>
							</p>

							<!--project content-->
							<p class="item-description">
								<strong>伙计们，来加入杰克船长的海盗队伍，向海洋进发，来一场寻宝之旅，沿途还会遇上怪兽呢！</strong>
							</p>
							<hr>
							<p>
								<strong>停下，老伙计</strong>
							</p>
							<p>和最有魅力的海盗——狡猾而又风度翩翩的杰克船长同行，扬帆宝藏湾！</p>
							<p>扬帆开启一场乐趣满满的海上之旅，潜入深海，搜寻戴维•琼斯长眠于海底的战利品——沿途还会遇上海盗、美人鱼、甚至还有令人毛骨悚然的的海怪。</p>
							<p>
								<strong>她出发了……</strong>
							</p>
							<p>呦-吼呦-吼——封上舱门，和您最爱的加勒比海盗一起来一场前所未有的航行吧！登上这艘以史上最臭名昭著的恶棍命名的航船，亲眼见证他们臭名远扬的故事。</p>
							<!--navigation-->
							<ul class="pager">
								<li class="previous">
									<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=1&fileName=cqxst">&lt; 前一个</a>
								</li>
								<li class="next">
									<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=3&fileName=tmhyfch">后一个 &gt;</a>
								</li>
							</ul>
							<hr>

							<div class="col-lg-8 col-md-8 col-sm-7 col-left">
								<section>
									<div class="row">
										<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">

											<!--input contact-->
											<h1>评分评论</h1>
											<h1 class="spacer">___</h1>
											<!-- 循环显示该项目下的评价   -->
											<tbody>
												<c:forEach items="${evaluateList }" var="evaluate">
													<tr>
														<!-- <a class="pull-left" href="#"> 
														<img class="media-object img-circle" src="img/blog/avatar.jpg" alt="miniature-comment" width="48">
														</a> -->
														<div class="media-body">
															<h3 class="media-heading">
															<p>用户:${evaluate.userId}</p>
														</h3>
															<p class="comment-date">❤❤❤❤❤</p>
															<p class="comment-content">评分：${evaluate.eScore}</p>
															<p class="comment-content">评价：${evaluate.eEvaluate}</p>
														</div>

													</tr>
												</c:forEach>
											</tbody>

										</div>
									</div>
								</section>
							</div>
						</section>
					</div>
				</div>
			</div>
			<!--share-->
			<!--  <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <h3 class="share">分享</h3>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 text-right">
                            <a href="#"><img class="social" src="img/icon/icon-mail.png" alt="Mail"></a>
                            <a href="#"><img class="social" src="img/icon/icon-facebook.png" alt="Facebook"></a>
                            <a href="#"><img class="social" src="img/icon/icon-twitter.png" alt="Twitter"></a>
                            <a href="#"><img class="social" src="img/icon/icon-google.png" alt="Google plus"></a>
                        </div>
                        
                    </div>
 -->
		</div>

	</body>

</html>