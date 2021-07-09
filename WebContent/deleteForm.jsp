<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>

<%
GuestBookDao gDao = new GuestBookDao();
String dNo = request.getParameter("id");
int guestbookNo = Integer.parseInt(dNo);

GuestBookVo gvo = gDao.getPost(guestbookNo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="post">
		비밀번호: <input type="password" name="pwcom" value=""> <input
			type="hidden" name="no" value=<%=gvo.getNo()%>>
		<button type="submit">등록</button>
	</form>

	<a href="./list.jsp">메인으로 돌아가기</a>
</body>
</html>