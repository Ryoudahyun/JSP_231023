<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>5.Include_Action</title>
</head>
<body>
	<h2>Include_Action에서 footer.jsp 호출</h2>
	<hr>
	include_action.jsp에서 출력한 메세지 입니다.<br>
	
	<jsp:include page="footer.jsp">
		<jsp:param name="email" value="test@test.com"/>
		<jsp:param name="phone" value="000-0000-0000"/>
	</jsp:include><br>
	<h2>include_action.jsp가 종료됩니다.</h2>
</body>
</html>