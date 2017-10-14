<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/static_file/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="/static_file/font-awesome/css/font-awesome.min.css">
</head>
<body>

<div class="layui-header header">
		<div class="l_logo">
			<a href="index.html">
				<!-- <img src=""> -->
				<!-- <span class="layui-icon">&#xe68e;</span> -->
				图书数据库管理系统
			</a>
		</div>
		<div class="layui-nav l_header_menu">
			<div class="layui-nav-item">
				<a href=""><img class="layui-nav-img" src="./static/img/user.jpg"/>lykhui</a>
			</div>
			<div class="layui-nav-item layui-this l_pc">
				<a href="index.html">首页</a>
			</div>
			<div class="layui-nav-item l_pc">
				<a href="personal.html">个人中心</a>
			</div>
			<div class="layui-nav-item l_pc">
				<a href=""><span class="fa fa-power-off"></span></a>
			</div>
			<div class="layui-nav-item l_mobile">
				<a href=""><span class="fa fa-bars"></span></a>
				<dl class="layui-nav-child l_nav_child">
					<dd class="layui-this"><a href="index.html">首页</a></dd>
					<dd><a href="personal.html">个人中心</a></dd>
					<dd><a href=""><span class="fa fa-power-off"></span></a></dd>
				</dl>
			</div>
		</div>
	</div>

<script type="text/javascript" src="/static_file/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use('element', function(){
			var element = layui.element;
		});
	</script>
</body>
</html>