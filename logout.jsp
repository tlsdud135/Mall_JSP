<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content ="text/html; charset=UTF-8">
<title>Ch06 실습: 장바구니-로그아웃</title>
</head>
<body>
<%
session.invalidate();
response.sendRedirect("login.html");
%>
</body>
</html>