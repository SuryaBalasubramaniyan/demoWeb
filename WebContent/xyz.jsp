<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
Welcome to JSP Expression language Demo</h1>
<h2>Hi ${param.t1}</h2>
<%
	session.setAttribute("abc","Session scope object");

%>
result: ${ sessionScope.abc }
</body>
</html>