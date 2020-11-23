<%@page import="java.util.Optional"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>factorial !</title>
</head>
<body>
<%!
private long factorial(long n) {
	long result = 1;
	while (n >= 1) {
		result *= n--;
	}
	return result;
}
%>
<%
	// /path
	String nValue = request.getParameter("n");
	String n = Optional
		.ofNullable(nValue)
		.orElse("1");
	long result = factorial(Long.valueOf(n));
%>
	<h1>._.</h1>
	결과: <%= result %>
</body>
</html>