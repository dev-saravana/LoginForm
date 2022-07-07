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
 <form action="sign" method="post">
            <h1>SIGNUP</h1>
            <label>Username</label>
            <input type="text" name="uname" required>
            <label>Password</label>
            <input type="password" name="pass" required>
            <label>Email</label>
            <input type="email" name="pass" required>
            <input type="submit" value="Create Account" id="sub">
        </form>
        <p>Already Have an Account? <a href="login.jsp">LOGIN</a></p>
</body>
</html>