<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
background-color:aqua;
}
h1{
text-align: center;
}
button{
margin:0% 50%;
padding:10px;
border-radius:4px;
outline:none;
border:none;
}
button:hover {
	background-color: orange;
}
a{
text-decoration: none;}
</style>
</head>
<body>
<%
String s=(String)session.getAttribute("pass");
if(s==null){
  response.sendRedirect("login.jsp");
}
response.setHeader("cache-control", "no-cache");
response.setHeader("cache-control", "no-store");
//response.setDateHeader("Expires", 0);
%>
<h1 >Welcome user</h1>
<a href="logout"><button>Logout</button></a>
</body>
</html>