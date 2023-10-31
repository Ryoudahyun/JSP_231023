<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ELTest</title>
</head>
<body>
	<h3>스크립트 태그</h3>
	<%
	int i = 3;
	out.println("i= " +i);
	request.setAttribute("j", 3);
	request.setAttribute("k", 5);
	%>
	<hr>
	
	<h3>스크립트 태그 표현식</h3>
	i = <%= i %> <br>
	i=<%= i > 4 %> <br>
	
	<!-- 문자 데이터로 연산시 문자 타입으로 자동 변환 -->
	i=<%= 3+"4" %> <br>
	<hr>
	
	<h3>EL 태그 표현식</h3>
	1. i=${i} <br> <!-- request로 한 것만 나옴. 자바의 원코드는 읽지 못함(변수선언) -->
	2. j=${j} <br>
	3. i=${k>j} <br>
	4. i=${k+7}
</body>
</html>