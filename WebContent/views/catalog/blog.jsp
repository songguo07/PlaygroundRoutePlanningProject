<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<style type="text/css">
		body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#allmap{width:100%;height:100%;}
		p{margin-left:5px; font-size:14px;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=SvMPLKTCLrTbXcdTsIVV89Yu5uiQt53p"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/AreaRestriction/1.2/src/AreaRestriction_min.js"></script>
	
    <title>百度api</title>
    <link rel="icon" type="image/png" href="img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/style.css" rel="stylesheet" media="screen">
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/bootstrap/respond.min.js"></script>
      <script src="js/bootstrap/html5shiv.js"></script>
    <![endif]-->
    
    </head>
    <body class="page-blog">
        <div class="container" id="container">
        
            <div class="row top">
                <div class="col-lg-8 col-md-8 col-sm-7 col-left">
                    <div class="name"><a href="index.html">游乐场线路规划</a></div>
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
                           <!--  <li class="last">
                                <a href="#"><img class="social" src="img/icon/icon-facebook.png" alt="facebook"></a>
                                <a href="#"><img class="social" src="img/icon/icon-twitter.png" alt="twitter"></a>
                            </li> -->
                        </ul>
                    </nav>
                </div>
            </div> 
              <div id="allmap"></div>                
        </div>  
                
        <script src="js/jquery.js"></script>
        
        <!-- FASTCLICK -->
        <script src="js/plugins/fastclick/fastclick.js"></script>
        <!-- SMOOTH SCROLL -->
        <script src="js/plugins/smooth-scroll/jquery.smooth-scroll.min.js"></script>
        <!-- MIXITUP -->
        <script src="js/plugins/mixitup/jquery.mixitup.min.js"></script>
        
        <script src="js/main.js"></script>
        
        <script type="text/javascript">
	//百度地图API功能	
	var map = new BMap.Map("allmap",{minZoom:15,maxZoom:19});
	map.centerAndZoom(new BMap.Point(121.667, 31.150), 17);
	map.enableScrollWheelZoom();
  	var b = new BMap.Bounds(new BMap.Point(121.640024,31.14767),new BMap.Point(121.704868,31.151723));
	try {	
		BMapLib.AreaRestriction.setBounds(map, b);
	} catch (e) {
		alert(e);
	}
</script>
        
    </body>
</html>