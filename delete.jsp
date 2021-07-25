<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ch06 실습: 장바구니-삭제</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String username =(String)session.getAttribute("username");
	boolean isMember=false;
	if(username!=null){
		isMember=true;
	}
	if(!isMember){
		response.sendRedirect("login.html");
	}
	else{
		ArrayList<String> list =(ArrayList<String>) session.getAttribute("productList");
		String num=request.getParameter("dnum");
		int dnum=Integer.parseInt(num);
		if(dnum>0&&dnum<list.size()+1)
			list.remove(dnum-1);
		response.sendRedirect("checkOut.jsp");
		
	}
%>
</body>
</html>