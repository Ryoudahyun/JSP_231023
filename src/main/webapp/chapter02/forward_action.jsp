<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>6.Forward</title>
</head>
<body>
	<h2>forward_action.jsp에서 footer.jsp 호출</h2>
	<hr>
	forward_action.jsp의 모든 내용은 출력되지 않습니다.
	<%! int a = 10; %>
	<jsp:forward page="footer.jsp">
		<jsp:param name="email" value="test@test.com"/>
		<jsp:param name="phone" value="000-0000-0000"/>		
	</jsp:forward><br>
	<%= a %>
	<h2>감사합니다</h2>		<!-- forward: 위에서부터 읽기는 하지만 현재 있는 곳은 읽지 않음. 넘어가는 곳에서만 읽음(현재가지고있는것은버림)-->
</body>
</html>