<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ch06 실습: 장바구니-상품추가</title>
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
		request.setCharacterEncoding("UTF-8");
		String productName=request.getParameter("product");
		if(productName==null){
%>
			<script>
					alert("상품을 선택하세요.");
					history.go(-1)
			</script>
<%
		}
		else{
			ArrayList<String> list=(ArrayList<String>) session.getAttribute("productList");
			if(list==null){
				list=new ArrayList<String>();
				session.setAttribute("productList",list);
			}
	
			list.add(productName);
%>
<script>
		alert("<%=productName%> 이(가) 추가 되었습니다.");
		history.go(-1)
</script>
<%	
		}
	} %>
</body>
</html>