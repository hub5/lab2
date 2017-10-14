<%@ page language="java" contentType="text/html; charset=utf-8"
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
			<li class="layui-nav-item layui-this">
				<a href="add_book.jsp">add book</a>
			</li>
			<li class="layui-nav-item">
				<a href="help.jsp">help</a>
			</li>
		</ul>
	</div>
</div>
	
<div class="layui-content"">
	<div class="layui-inner">
		<form class="layui-form layui-col-md4 layui-col-s6 layui-col-xs1" action ="addb" method = "post">
			<div class="layui-form-item">
				<label class="layui-form-label">ISBN</label>
				<div class="layui-input-block">
					<input type="text" name="ISBN" class="layui-input" required>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">Title</label>
				<div class="layui-input-block">
					<input type="text" name="Title" class="layui-input" required>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">AuthorID</label>
				<div class="layui-input-block">
					<input type="text" name="AuthorID" class="layui-input" required>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">Publisher</label>
				<div class="layui-input-block">
					<input type="text" name="Publisher" class="layui-input" required>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">PublishDate</label>
				<div class="layui-input-block">
					<input id="PublishDate" type="text" name="PublishDate" class="layui-input" required>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">Price</label>
				<div class="layui-input-block">
					<input type="text" name="Price" class="layui-input" required>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="submit" name="" class="layui-btn" value="add">
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript" src="/static_file/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['element', 'laydate'], function(){
		var element = layui.element,
			laydate = layui.laydate;
		
		laydate.render({
			elem: '#PublishDate',
			format: 'yyyy/MM/dd'
		});
	});
</script>



<!-- 
	<form action = "addb" method = "post">
		ISBN<input type = "text" name="ISBN"/><br>
		Title<input type = "text" name = "Title"/><br>
		AuthorID<input type = "text" name = "AuthorID"/><br>
		Publisher<input type = "text" name = "Publisher"/><br>
		PublishDate<input type = "text" name = "PublishDate"/><br>
		Price<input type = "text" name = "Price"/><br>
		submit<input type = "submit" value = "submit"/><br>
	</form>
-->
</body>
</html>