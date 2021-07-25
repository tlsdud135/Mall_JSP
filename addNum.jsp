<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ch06 실습: 장바구니-추가</title>
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
		String num=request.getParameter("anum");
		int anum=Integer.parseInt(num);
		if(anum>0&&anum<list.size()+1)
			list.add(list.get(anum-1));
		response.sendRedirect("checkOut.jsp");
		
	}
%>
</body>
</html>