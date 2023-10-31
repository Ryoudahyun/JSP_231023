<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login_Pro</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>

<!-- LoginBean lbean = new LoginBean(); -->
<jsp:useBean id="lbean" class="jspbook.LoginBean" />
<jsp:setProperty name="lbean" property="userid"/>
<jsp:setProperty name="lbean" property="passwd"/>

<center>
	<h2>로그인</h2>
	<hr>
	<%
	if(!lbean.checkUser()){
		out.println("로그인 실패");
	} else{
		out.println("로그인 성공");
	}
	%>
	
	<hr>
	
	<%-- <h2>당신의 아이디는 <%= lbean.getUserid() %></h2> --%>
	당신의 아이디는 <jsp:getProperty name="lbean" property="userid" /> <br>
	당신의 패스워드는 <jsp:getProperty name="lbean" property="passwd" />
	
</center>
</body>
</html>