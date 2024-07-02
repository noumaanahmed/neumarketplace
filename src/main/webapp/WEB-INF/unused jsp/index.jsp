<!-- index.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
    <h1>Welcome to NEU Marketplace</h1>
    <a href="${pageContext.request.contextPath}/login">Login</a> | 
    <a href="${pageContext.request.contextPath}/user/register">Register</a>
</body>
</html>
