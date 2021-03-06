<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢笑聚友会</title>
    <link href="${pageContext.request.contextPath}/static/02/css/style.css" rel="stylesheet" media="screen">
    
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/views/catalog/img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/views/catalog/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/views/catalog/css/style.css" rel="stylesheet" media="screen">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/bootstrap/respond.min.js"></script>
    <script src="js/bootstrap/html5shiv.js"></script>
    <![endif]-->

</head>
<body class="page-project-example">
<div class="container" id="container">

    <div class="row top">
        <div class="col-lg-8 col-md-8 col-sm-7 col-left">
            <div class="name"><a href="index.html">游乐场路线规划</a></div>
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
                    <img src="${pageContext.request.contextPath}/views/catalog/img/play/hxjyh.jpg" alt="" class="img-responsive">

                    <!--project title-->
                    <h1>欢笑聚友会</h1>
                    <h1 class="spacer">___</h1>

                    <!--project tags-->
                    <p class="item-tags">
                        <a href="#">室外</a> ,
                        <a href="#">互动项目</a> ,
                        <a href="#">所有身高</a>
                    </p>

                    <!--project content-->
                    <p class="item-description"><strong>在地球上最大、最深、最蓝的海洋中，有一座被丛林覆盖的岛屿。您可能会在岛上的旅途中遇到一些丛林故事里的可爱迪士尼朋友，比如狮子王里的朋友们，甚至可能在现场与疯狂动物城中的朋友们见面！ </strong></p>
                    <hr>
                    <p><strong>欢笑聚友会</strong></p>
                    <p>在这里您可能会遇见著名的猩猩、树懒和狮子等迪士尼朋友，和他们打个招呼吧。</p>
                    <p><strong>迪士尼经典动画里出现的丛林</strong></p>
                    <p>在这座神奇岛屿的丛林里，居住着一群迪士尼朋友，他们来自多部深受喜爱的迪士尼经典动画电影。 </p>
                    <!--navigation-->
                    <ul class="pager">
                        <li class="previous"><a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=25&fileName=gjtsy">&lt; 前一个</a></li>
                        <li class="next"><a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=27&fileName=lmspl">后一个 &gt;</a></li>
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
                    </div> -->

                </section>
            </div>
        </div>
        <!--        <div class="col-lg-4 col-md-4 col-sm-5 col-right">-->
        <!--            <div id="scroll-shadow"></div>-->

        <!--            <h1 class="visible-xs section-header">Last work</h1>-->
        <!--            <h1 class="visible-xs text-center spacer">___</h1>-->

        <!--            &lt;!&ndash;work choice&ndash;&gt;-->
        <!--            <div class="item-choice">-->
        <!--                <a href="#" class="filter" data-filter="all">All</a>-->
        <!--                <a href="#" class="filter" data-filter="web-design"> Web design</a>-->
        <!--                <a href="#" class="filter" data-filter="print"> Print</a>-->
        <!--                <a href="#" class="filter" data-filter="illustration">Illustration</a>-->
        <!--                <hr>-->
        <!--            </div>-->

        <!--            <section class="row" id="Grid">-->
        <!--                &lt;!&ndash;work 1&ndash;&gt;-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix web-design">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->

        <!--                                &lt;!&ndash;work image&ndash;&gt;-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-1.png" alt="Work 1">-->

        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->

        <!--                            &lt;!&ndash;work title&ndash;&gt;-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->

        <!--                            &lt;!&ndash;work category&ndash;&gt;-->
        <!--                            <p class="item-category">Logotype</p>-->

        <!--                            &lt;!&ndash;work short description&ndash;&gt;-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->

        <!--                            &lt;!&ndash;work tags&ndash;&gt;-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->

        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->

        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-6.jpg" alt="Work 2">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Web design</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix web-design">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-3.png" alt="Work 3">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Illustration</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-4.png" alt="Work 4">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Logotype</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-5.png" alt="Work 5">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Logotype</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-9.jpg" alt="Work 6">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Web design</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-7.png" alt="Work 7">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Branding</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-8.png" alt="Work 8">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Poster</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-2.png" alt="Work 9">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Logotype</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">-->
        <!--                    <div class="panel panel-default item">-->
        <!--                        <div class="panel-heading">-->
        <!--                            <a href="project-example.html">-->
        <!--                                <img class="img-responsive item-img" src="img/work/projet-example-10.png" alt="Work 10">-->
        <!--                            </a>-->
        <!--                        </div>-->
        <!--                        <div class="panel-body">-->
        <!--                            <a href="project-example.html"><h4 class="item-title">Project Title</h4></a>-->
        <!--                            <p class="item-category">Logotype</p>-->
        <!--                            <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>-->
        <!--                            <hr>-->
        <!--                            <p class="item-tags">-->
        <!--                                <a href="#">illustration</a> ,-->
        <!--                                <a href="#">graphic design</a> ,-->
        <!--                                <a href="#">website</a>-->
        <!--                            </p>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                </div>-->
        <!--            </section>-->
        <!--            <a class="btn btn-block scroll-top visible-xs">-->
        <!--                <img src="img/icon/icon-chevron.png" alt="Scroll top">-->
        <!--            </a>-->
        <!--        </div>-->
    </div>
</div>

<script src="js/jquery.js"></script>

<!-- FASTCLICK -->
<script src="${pageContext.request.contextPath}/views/catalog/js/plugins/fastclick/fastclick.js"></script>
<!-- SMOOTH SCROLL -->
<script src="${pageContext.request.contextPath}/views/catalog/js/plugins/smooth-scroll/jquery.smooth-scroll.min.js"></script>
<!-- MIXITUP -->
<script src="${pageContext.request.contextPath}/views/catalog/js/plugins/mixitup/jquery.mixitup.min.js"></script>

<script src="${pageContext.request.contextPath}/views/catalog/js/main.js"></script>
</body>
</html>