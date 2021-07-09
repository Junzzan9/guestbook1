<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
String name = request.getParameter("name");
String pw = request.getParameter("pw");
String content = request.getParameter("content");
GuestBookDao gDao = new GuestBookDao();
GuestBookVo gVo = new GuestBookVo(name, pw, content);
gDao.postAdd(gVo);
/*
System.out.println(name + hp + com);
*/
List<GuestBookVo> pList = gDao.getPostList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	response.sendRedirect("./list.jsp");
	%>
</body>
</html>