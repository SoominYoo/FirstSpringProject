<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>


<h1>Edit Form</h1>

<%--@elvariable id="boardVO" type="com"--%>
<form:form modelAttribute="boardVO" method = "post" action = "../editok">
	<form:hidden path = "seq"/>
	<table id = "edit">
		<tr><td>Category</td><td><form:input path ="category"/></td></tr>
		<tr><td>Title</td><td><form:input path ="title"/></td></tr>
		<tr><td>Writer</td><td><form:input path ="writer"/></td></tr>
		<tr><td>Contents</td><td><form:textarea cols = "50" rows="5" path = "content" />
	</table>
	<input type="submit" value = "edit"/>
	<input type="button" value="Cancel" onclick="history.back()"/>
</form:form>

</body>
</html>