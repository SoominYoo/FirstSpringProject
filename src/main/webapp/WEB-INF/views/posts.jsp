<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	text-align:center;
	border-collapse: collapse;
	width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #F0B2B9;
  color: white;
}
h1{
	text-align: center;
}
h4{
	text-align: right;
	margin-right : 5px;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>
<h4>안녕하세오</h4>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Category</th>
	<th>Title</th>
	<th>Writer</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.Seq()}</td>
		<td>${u.Category()}</td>
		<td>${u.Title()}</td>
		<td>${u.Writer()}</td>
		<td>${u.Content()}</td>
		<td>${u.Regdate()}</td>
		<td><a href="editform.jsp?id=${u.Seq()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.Seq()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type = "button" onclick = "location.href='add'">Add new post</button>
</body>
</html>