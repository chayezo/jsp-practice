<%@page import="java.util.Optional"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>._.</title>
</head>
<body>
<%!
	private static String printDate() {
		final Date date = new Date();
		final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss(E)");
		sdf.format(date);
		return sdf.format(date);
}%>
<h1>~_~</h1>
<p>현재 시간:<%=printDate() %></p>
<!-- 값을 평가할 때는 = 넣어줌 -->
</body>
</html>