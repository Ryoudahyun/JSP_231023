<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Redirect</title>
</head>
<body bgcolor="#FFFFcc">
	<h3>&lt;c:redirect&gt;</h3>
	<c:url var="target" value="6_choose.jsp">
		<c:param name="sel1">Butter</c:param> <!-- 첫번째 식별자: ? -->
		<c:param name="sel2">Bread</c:param> <!-- 두번째 식별자: & -->
	</c:url>
	<hr>
	
	단순출력: ${target } <br>
	링크출력: <a href="${target }">상품목록</a> <br>
</body>
</html>