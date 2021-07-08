<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
String dNo = request.getParameter("id");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		비밀번호: <input type="text" name="pwcom" value=""> <input
			type="hidden" name="dNo" value=<%=dNo%>>
		<button type="submit">등록</button>
	</form>


</body>
</html>