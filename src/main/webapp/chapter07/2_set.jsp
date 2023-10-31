<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Out</title>
</head>
<body bgcolor="#fff">
	<center>
		<h3>&lt;c:set&gt;</h3> <!-- escape xml true(특수문자) -->
	</center>
	
	<!-- set의 기본 문법 -->
	<c:set  var="msg" value="Hello World" />
	msg: ${msg } <br>
	msg: <%= pageContext.getAttribute("msg") %> <br>
	<p/>
	Member name: ${member.name } <br>
	Member email: ${member.email } <br>	
	<hr>
	<p>
	<!-- set의 활용 문법 -->
	<c:set target="${member }" property="name" value="이자바" />
	<c:set target="${member }" property="email" value="changed@test.com" />
	Member Change name: ${member.name } <br>
	Member Change email: ${member.email } <br>
</body>
</html>

<!-- escapeXml 속성을 "false"로 주면 html이 escape 되지 않고 그대로 출력 -->