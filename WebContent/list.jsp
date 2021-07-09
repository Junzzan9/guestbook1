<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
GuestBookDao gdao = new GuestBookDao();
List<GuestBookVo> pList = gdao.getPostList();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./addList.jsp" method="get">
		<table border="1">
			<colgroup>
				<col style="width: 40px;">
				<col style="width: 120px;">
				<col style="width: 80px;">
				<col style="width: 120px;">
			</colgroup>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="text" name="pw" value=""></td>
			</tr>
			<tr>
				<td colspan="4" rowspan="3" height="120px"><input type="text"
					name="content" value=""></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td colspan="4"><button type="submit">등록</button></td>
			</tr>
		</table>
	</form>
	<%
	for (int i = 0; i < pList.size(); i++) {
	%>

	<table border="1">
		<colgroup>
			<col style="width: 30px;">
			<col style="width: 90px;">
			<col style="width: 300px;">
			<col style="width: 60px;">
		</colgroup>
		<tr>
			<td><%=pList.get(i).getNo()%></td>
			<td><%=pList.get(i).getName()%></td>
			<td><%=pList.get(i).getDate()%></td>
			<td><a
				href="./deleteForm.jsp?id=
				<%=pList.get(i).getNo()%>">[삭제]</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=pList.get(i).getContent()%></td>
		</tr>

	</table>

	<br>

	<%
	}
	%>
</body>
</html>