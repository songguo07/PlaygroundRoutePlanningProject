<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>步行途经点</title>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=SvMPLKTCLrTbXcdTsIVV89Yu5uiQt53p"></script>
</head>
<body>
	<p>
		<input type='button' value='开始' onclick='run();' style="margin-left: 600px;" />
	</p>
	<div style="width: 100%; height: 650px; border: 1px solid gray; margin:auto;"
		id="container" ></div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
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
		var map = new BMap.Map("container");
		map.centerAndZoom(new BMap.Point(121.667, 31.150), 17);
		map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
		map.addControl(new BMap.NavigationControl()); // 添加平移缩放控件  
		map.addControl(new BMap.ScaleControl()); // 添加比例尺控件  
		map.addControl(new BMap.OverviewMapControl()); //添加缩略地图控件  

		var myP1 = new BMap.Point(121.665922, 31.150702); //景点1-爱丽丝梦游仙境迷宫
		var myP2 = new BMap.Point(121.671087, 31.15043); //景点2-翱翔飞跃地平线
		var myP3 = new BMap.Point(121.664161, 31.147271); //景点3-巴斯光年星际营救
		var myP4 = new BMap.Point(121.662743, 31.149644); //景点4-抱抱龙冲天赛车
		var myP5 = new BMap.Point(121.662513, 31.148126); //景点5-创极速光轮
		var myP6 = new BMap.Point(121.663606, 31.14959); //景点6-弹簧狗团团转
		var myP7 = new BMap.Point(121.670127, 31.150023); //景点7-古迹搜索营的绳索挑战道
		var myP8 = new BMap.Point(121.670127, 31.150084); //景点8-古迹搜索营的探索步行道
		var myP9 = new BMap.Point(121.663687, 31.149941); //景点9-胡迪牛仔嘉年华
		var myP10 = new BMap.Point(121.669495, 31.151262); //景点10-加勒比海盗
		var myP11 = new BMap.Point(121.664975, 31.149827); //景点11-晶彩奇航
		var myP12 = new BMap.Point(121.669635, 31.149249); //景点12-雷鸣山漂流
		var myP13 = new BMap.Point(121.665051, 31.14858); //景点13-漫威英雄总部的美国队长
		var myP14 = new BMap.Point(121.665051, 31.14858); //景点14-漫威英雄总部的蜘蛛侠
		var myP15 = new BMap.Point(121.665937, 31.149877); //景点15-漫游童话时光
		var myP16 = new BMap.Point(121.665069, 31.147671); //景点16-喷气背包飞行器
		var myP17 = new BMap.Point(121.666156, 31.151034); //景点17-七个小矮人矿山车
		var myP18 = new BMap.Point(121.664322, 31.149551); //景点18-小飞侠天空奇遇
		var myP19 = new BMap.Point(121.665127, 31.151779); //景点19-小熊维尼历险记
		var myP20 = new BMap.Point(121.665247, 31.151391); //景点20-旋转疯蜜罐
		var myP21 = new BMap.Point(121.665991, 31.149698); //景点21-迎宾阁
		var myP22 = new BMap.Point(121.668419, 31.151232); //景点22-艾尔农庄夏日玩水派对
		var myP23 = new BMap.Point(121.663588, 31.150611); //景点23-冰雪奇缘
		var myP24 = new BMap.Point(121.666552, 31.149338); //景点24-点亮奇梦
		var myP25 = new BMap.Point(121.669825, 31.151213); //景点25-风暴来临
		var myP26 = new BMap.Point(121.670836, 31.150849); //景点26-人猿泰山
		var flag=[];
		$.ajaxSetup({
			async : false
		});
		$.ajax({
			url : result+"/GetBestRoute",
			dataType : "json",
			traditional : true,
			type : "get",
			success : function(array) {
				var flag1 = eval(array);
				flag1.forEach(function(data,index,arr){  
				      flag.push(+data);  
				});
			}
		});
		var promap1 = new Array(myP1, myP2, myP3, myP4, myP5, myP6, myP7, myP8,
				myP9, myP10, myP11, myP12, myP13, myP14, myP15, myP16, myP17,
				myP18, myP19, myP20, myP21, myP22, myP23, myP24, myP25, myP26);
		var promap = new Array();
		for (var i = 0,j=0; i < 26;) {
			if (flag[i] === 1) {
				promap[j++] = promap1[i];
				i++;
			} else {
				i++;
			}
		}
		window.run = function() {
			map.clearOverlays(); //清除地图上所有的覆盖物  
			var walking = new BMap.WalkingRoute(map); //创建步行实例  
			for (var i = 0; i < promap.length - 1; i++) {
				walking.search(promap[i], promap[i + 1]);
			} //第i个步行搜索
			walking.setSearchCompleteCallback(function() {
						var pts = walking.getResults().getPlan(0).getRoute(0).getPath(); //通过步行实例，获得一系列点的数组  

						var polyline = new BMap.Polyline(pts);
						map.addOverlay(polyline);
						var m = new Array();
						for (var i = 0; i < promap.length; i++) {
							m[i] = new BMap.Marker(promap[i]);
							map.addOverlay(m[i]);
						}

						var lab1 = new BMap.Label("起点", {
							position : promap[0]
						});
						for (var i = 1; i < promap.length - 1; i++) {
							var lab2 = new BMap.Label("途径点", {
								position : promap[i]
							});
							map.addOverlay(lab2);
						}
						var lab3 = new BMap.Label("终点", {
							position : promap[promap.length - 1]
						});
						map.addOverlay(lab1);
						map.addOverlay(lab3);

						setTimeout(function() {
							map.setViewport(promap); //调整到最佳视野  
						}, 1000);

					});
		}
	</script>
</body>
</html>
