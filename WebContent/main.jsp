<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书数据库</title>
<link rel="stylesheet" type="text/css" href="/static_file/layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="/static_file/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/static_file/css/index.css">
</head>

<!--
<frameset rows="20%,*">
<frame src="top.jsp">
<frameset cols="20%,*">
<frame src="left.jsp">
<frame src="right.jsp" name="right">
</frameset>
</frameset>
  -->

<body>
<div class="layui-header header">
	<div class="l_logo">
		<marquee>
			<a href="main.jsp">
				图书数据库管理系统 欢迎使用！
			</a>
		</marquee>
		</div>
	</div>
</div>

<div class="layui-side layui-bg-black l_side">
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree">
			<li class="layui-nav-item layui-this">
				<a href="main.jsp">home</a>
			</li>
			<li class="layui-nav-item">
				<a href="search_author.jsp">search by the author</a>
			</li>
			<li class="layui-nav-item">
				<a href="search_name.jsp">search by the name</a>
			</li>
			<li class="layui-nav-item">
				<a href="add_book.jsp">add book</a>
			</li>
			<li class="layui-nav-item">
				<a href="help.jsp">help</a>
			</li>
		</ul>
	</div>
</div>
	
<div class="layui-content" style="position: absolute; top: 80px; left: 220px; right: 20px; bottom: 20px;">
	
		<div class="layui-carousel" id="test1">
		  <div carousel-item>
		    <div><img class="imgTurn" width="100%" src="/static_file/img/1.jpg"/></div>
		    <div><img class="imgTurn" width="100%" src="/static_file/img/2.jpg"/></div>
		    <div><img class="imgTurn" width="100%" src="/static_file/img/3.jpg"/></div>
		    <div><img class="imgTurn" width="100%" src="/static_file/img/4.jpg"/></div>
		    <div><img class="imgTurn" width="100%" src="/static_file/img/5.jpg"/></div>
		  </div>
		</div>
	
</div>

<script type="text/javascript" src="/static_file/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use('carousel', function(){
		  var carousel = layui.carousel;
		  //建造实例
		  carousel.render({
		    elem: '#test1'
		    ,width: '100%' //设置容器宽度
		    ,height: '100%'
		    ,arrow: 'always' //始终显示箭头
		    //,anim: 'updown' //切换动画方式
		    ,interval: 2000
		  });
		});
	</script>
</body>
</html>