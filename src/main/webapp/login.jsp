<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
 <form action="logcheck" method="get">
        <h1>LOGIN</h1>
        <label>Username</label>
        <input type="text" name="uname" required>
        <label>Password</label>
        <input type="password" name="pass" required>
        <input type="submit" value="Login" id="sub">
    </form>
    <p>Dont Have an Account? <a href="signup.jsp">SIGN UP</a></p>
</body>
</html>