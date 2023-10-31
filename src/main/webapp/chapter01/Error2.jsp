<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2.PageDirective</title>
</head>
<body>
	<% response.setStatus(200); %> <!-- 상태가 200번이면 접속성공 -->
	관리자에게 연결됩니다.
	
	<h2>죄송합니다. <%= exception.getMessage()%> 문제로 에러가 발생했습니다. </h2>
</body>
</html>