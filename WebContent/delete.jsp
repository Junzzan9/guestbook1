  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
int no = Integer.parseInt(request.getParameter("no"));
String password = request.getParameter("pwcom");

GuestBookVo guestbookVo = new GuestBookVo(no, password);

GuestBookDao guestbookDao = new GuestBookDao();
guestbookDao.postDelete(guestbookVo);

response.sendRedirect("./addList.jsp");
%>
