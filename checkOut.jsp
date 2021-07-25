<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="java.util.Collections" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ch06 실습: 장바구니-장바구니</title>
<style>
	@import url(checkOut.css);
</style>
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
%>
		<h2>장바구니</h2>
		<hr>
		<div id="con"><%=session.getAttribute("username") %>님의 장바구니 목록</div>
		<hr>
		<div id="list">
<%
		ArrayList<String> list =(ArrayList<String>) session.getAttribute("productList");
		if(list==null){
			out.println("선택한 상품이 없습니다!");
		}
		else{
			Collections.sort(list);
			for (int i=0; i<list.size();i++)
				out.println(i+1+". "+list.get(i)+"<br>");
		}
%>
	</div>
	<form name="addNum" method="POST" action="addNum.jsp">
		<span>추가할 번호를 입력하십시오</span><br>
		<input type="text" name="anum" />
		<input type="submit" value="추가" />
	</form>
	<form name="delete" method="POST" action="delete.jsp">
		<span>삭제할 번호를 입력하십시오</span><br>
		<input type="text" name="dnum" />
		<input type="submit" value="삭제" />
	</form>
	<a href="allDelete.jsp" >장바구니 비우기</a><br>
	<a href="selProduct.jsp" >목록으로 돌아가기</a><br>
<%
	}
%>

</body>
</html>