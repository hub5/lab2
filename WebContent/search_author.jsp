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
			<li class="layui-nav-item layui-this">
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
	
<div class="layui-content">
	<div class="layui-inner">
		<form class="layui-form layui-col-md4 layui-col-s6 layui-col-xs1" action ="sear_auth" method = "post">
			<div class="layui-form-item">
				<label class="layui-form-label">Author_name</label>
				<div class="layui-input-block">
					<input type="text" name="author_name" class="layui-input" required>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="submit" name="" class="layui-btn" value="search">
				</div>
			</div>
		</form>
		
		<% 
			String panduan = (String)request.getAttribute("is_success");
		if(panduan!=null&&panduan.equals("success")){
			ArrayList<String> title = (ArrayList<String>)request.getAttribute("title_list");
			int i=0;
		%>
			<table class="layui-table">
				<%for(i=0;i<title.size();i++){ %>
					<tr>
						<td>书名</td>
						<td><%=title.get(i)%></td>
					</tr>
				<%} %>
			</table>
			
		<%}%>
		
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