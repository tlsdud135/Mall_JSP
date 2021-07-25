<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content ="text/html; charset=UTF-8">
<title>Ch06 실습: 장바구니-로그인</title>
</head>
<body>
<%
String username= request.getParameter("username");

if(username != null&&username.equals("admin")){
	session.setAttribute("username",username);
	session.setMaxInactiveInterval(30*60);
	response.sendRedirect("selProduct.jsp");
}
else
	response.sendRedirect("login.html");
%>
</body>
</html>