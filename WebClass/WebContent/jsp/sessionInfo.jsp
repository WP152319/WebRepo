<%@page import="org.dimigo.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	UserVo vo = (UserVo)session.getAttribute("key");
%>
<h1> ID : <%=vo.getId() %></h1>
<h1> NAME : <%=vo.getName() %></h1>
<h1> NickName : <%=vo.getNickname() %></h1>
</body>
</html>