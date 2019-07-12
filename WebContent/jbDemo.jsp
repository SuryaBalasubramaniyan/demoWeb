<%@page import="com.Person"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Java Bean Demo</h1>
<hr>
<h2>
<jsp:useBean id="p1" class="com.Person"></jsp:useBean> 
<jsp:setProperty property="name" name="p1" value="surya" /> 
<jsp:setProperty property="age" name="p1" value="25" />
your good name is : <jsp:getProperty property="name" name="p1"/>
age : <jsp:getProperty property="age" name="p1"/>
<hr>
<% 
Person p2=new Person();
p2.setName("bhargavi");
p2.setAge(25);
out.println("Name:"+p2.getName());
out.println("Age:"+p2.getAge());
%>
</h2>
</body>
</html>