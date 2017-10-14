<%@ page language="java" import="jkxystudent.*" contentType="text/html; charset=utf-8"
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
			<li class="layui-nav-item layui-this">
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
	
<div class="layui-content">
	<div class="layui-inner">
		<div style="display: block; width: 100%; height: auto; height: 100px;">
			<form class="layui-form layui-col-md4 layui-col-s6 layui-col-xs1" action ="sear_name" method = "post">
				<div class="layui-form-item">
					<label class="layui-form-label">Book_name</label>
					<div class="layui-input-block">
						<input type="text" name="book_name" class="layui-input" required>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit" name="" class="layui-btn" value="search">
					</div>
				</div>
			</form>
		</div>
		
		<% book b = (book)request.getAttribute("book");
	author a=(author)request.getAttribute("author");
	String age=(String)request.getAttribute("age");
	if(age!=null){%>
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
			<legend>book message</legend>
		</fieldset>
		<table class="layui-table">
			<thead>
				<tr>
					<th>ISBN</th>
					<th>Title</th>
					<th>AuthorID</th>
					<th>Publisher</th>
					<th>PublisherDate</th>
					<th>Price</th>
					<th>Operation</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%= b.get_isbn() %></td>
					<td><%= b.get_title() %></td>
					<td><%= b.get_authorId() %></td>
					<td><%= b.get_publisher() %></td>
					<td><%= b.get_publisherdata() %></td>
					<td><%= b.get_price() %></td>
					<td>
						<form action = "delete.action?bname=<%= b.get_title() %>" method = "post">
							<input class="layui-btn layui-btn-danger" type = "submit" value = "delete"/>
						</form>
					</td>
				</tr>
			</tbody>
		</table>
		
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
			<legend>author message</legend>
		</fieldset>
		<table class="layui-table">
			<thead>
				<tr>
					<th>authorId</th>
					<th>name</th>
					<th>age</th>
					<th>country</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%= a.get_authorId() %></td>
					<td><%= a.get_name() %></td>
					<td><%= a.get_age() %></td>
					<td><%= a.get_country() %></td>
				</tr>
			</tbody>
		</table>
		
		<!-- 
		<form action = "update?bisbn=<%= b.get_isbn() %>" method = "post">
			<input type = "submit" value = "update"/><br>
			AuthorID<input type = "text" name = "AuthorID"/><br>
			Publisher<input type = "text" name = "Publisher"/><br>
			PublishDate<input type = "text" name = "PublishDate"/><br>
			Price<input type = "text" name = "Price"/><br>
	    </form>
	    -->
	    <form class="layui-form layui-col-md4 layui-col-s6 layui-col-xs1" action ="update?bisbn=<%= b.get_isbn() %>" method = "post">
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
					<input type="submit" name="" class="layui-btn" value="edit">
				</div>
			</div>
		</form>
	<%}
	%>
		
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
<form action = "sear_name" method = "post">
		Book_name<input type = "text" name="book_name"/><br>
		submit<input type = "submit" value = "ok"/><br>
</form>
-->




</body>
</html>