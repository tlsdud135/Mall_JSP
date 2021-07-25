<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ch06 실습: 장바구니-상품선택</title>
<%
	request.setCharacterEncoding("UTF-8");
	String username =(String)session.getAttribute("username");
%>
<style>
	@import url(selProduct.css);
</style>
</head>
<body>
<h2>상품 선택</h2>
<hr/>
<%
boolean isMember=false;
if(username!=null){
	isMember=true;
}
if(!isMember){
%>
	<div id="con">guest 님 어서오세요!</div>
<%
}
else{
%>
<div id="con"><%= session.getAttribute("username") %> 님 어서오세요!</div>
<%}%>
<hr>
<div>
<form name="selProductForm" method="POST" action="add.jsp">
	<div id="fom">
	<label>
		<input type="radio" name="product" value="사과">
		사과
	</label><br>
	<label>
		<input type="radio" name="product" value="귤">
		귤
	</label><br>
	<label>
		<input type="radio" name="product" value="파인애플">
		파인애플
	</label><br>
	<label>
		<input type="radio" name="product" value="자몽">
		자몽
	</label><br>
	<label>
		<input type="radio" name="product" value="레몬">
		레몬
	</label></div>
	<input type="submit" value="추가">
</form>
<a href="checkOut.jsp" >장바구니 보기</a><br>
<%
if(!isMember){
%>
	<a href="login.html">로그인</a>
<%
}
else{
%>
	<a href="logout.jsp">로그아웃</a>
<%}%>
</div>
</body>
</html>