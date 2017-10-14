<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/static_file/layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="/static_file/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/static_file/css/index.css">
</head>
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
			<li class="layui-nav-item">
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
			<li class="layui-nav-item layui-this">
				<a href="help.jsp">help</a>
			</li>
		</ul>
	</div>
</div>
	
<div class="layui-content">
	<div class="layui-inner">
		使用帮助<br>
		本系统包含以下功能<br>
		1.search by the author:输入作者姓名显示作者所写的书的名字（如果没有此作者或者该作者没有写过书，不显示任何东西，自动刷新）<br>
		2.search by the book:输入书的名字，显示书的信息和作者的信息，然后，可以对书籍进行删除和修改的操作,操作成功后返回主界面（如果没有此书，不显示任何东西，自动刷新）<br>
		3.add book:输入书的信息，向数据库增加一本图书
	</div>
</div>

<script type="text/javascript" src="/static_file/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['element', 'table'], function(){
		var element = layui.element,
			table = layui.table;
	});
</script>
 
<!-- 
		<form class="layui-form" action ="sear_auth" method = "post">
				<label class="layui-form-label">Author_name</label>
				<input type = "text" name="author_name"/><br>
				submit<input type = "submit" value = "ok"/><br>
		</form>
-->


	
</body>
</html>