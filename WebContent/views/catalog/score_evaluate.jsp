<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Evaluate</title>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/static/02/img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/02/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/static/02/css/style.css" rel="stylesheet" media="screen">
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/bootstrap/respond.min.js"></script>
      <script src="js/bootstrap/html5shiv.js"></script>
    <![endif]-->
    
    </head>
    <body class="page-contact">
        <div class="container" id="container">
        
            <div class="row top">
                <div class="col-lg-8 col-md-8 col-sm-7 col-left">
                    <div class="name"><a href="">Eldun Malosanu</a></div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-right">
                    <nav>
                        <ul class="list-inline" id="menu">
                            <li>
                                <a href="index.html">work</a>
                            </li>
                            <li>
                                <a href="blog.html">周边信息</a>
                            </li>
                            <li class=" active">
                                <a href="contact.html">评论</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="row bottom">
                <div class="col-lg-8 col-md-8 col-sm-7 col-left">
                    <section>
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">
                                
                                <!--input contact-->
                                <h1>评论</h1>
                                <h1 class="spacer">___</h1>
                                <p>请为这个项目打分并评论</p>
                                <hr>
                                <div class="panel panel-default contact btn-footer">
                                    <div class="panel-body">
                                        <form role="form">
                                            <div class="form-group">
                                                <label for="contactEmail">评分（满分10分）</label>
                                                <input type="email" class="form-control" id="evaluateGrade">
                                            </div>
                                            <div class="form-group">
                                                <label for="contactMessage">评论</label>
                                                <textarea class="form-control" rows="10" id="evaluateMessage"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="panel-footer">
                                        <a class="btn btn-grey btn-lg btn-block">发送</a>
                                    </div>
                                </div>
                            </div>
                        </div>    
                    </section>
                </div>
                    </section>
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
</html>