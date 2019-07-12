<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.util.Date" %>
<%@page isErrorPage="true" %>
<%@page info="just for demo" %>
<%@page session="true" %>

<body>
<h1>Directive Demo</h1>
<hr>
<h2>
Todays date: <%= new Date() %> <br><br>

Exception: <%=exception %> <br><br>
Information :<%=getServletInfo() %> <br><br>
Session id :<%=session.getId() %>  

<hr>

<%@include file="login.html" %>
<%@include file="demo.jsp" %>
<%@include file="abc.jsp" %>

</h2>

</body>
</html>