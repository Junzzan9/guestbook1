<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
int pwc = Integer.parseInt(request.getParameter("pwcom"));
int dNo = Integer.parseInt(request.getParameter("dNo"));

GuestBookDao gDao = new GuestBookDao();
List<GuestBookVo> pList = gDao.getPostList();
int dNo2=Integer.parseInt(pList.get(dNo).getPw());
if (pwc == dNo2) {
	gDao.postDelete(pList.get(dNo));
}

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