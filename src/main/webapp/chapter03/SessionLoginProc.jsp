<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SessionLoginProc</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id"); /* param으로 넘어오는 것은 모두 String */
	
	//브라우저가 유지되는 한에서는 어느 페이지에서도 공유할 수 있도록 저장
	session.setAttribute("id", id);
	
	//세션 유지시간
	session.setMaxInactiveInterval(5);
	%>
	<h2>당신의 아이디는 <%= id %>입니다.</h2>
	
	<a href="SessionShopping.jsp">쇼핑몰 바로가기</a>
	
</body>
</html>