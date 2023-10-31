<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page_Control</title>
</head>
<body>
	<h2>forward, sendRedirect 테스트</h2>
	<hr>
	<form method="post" action="forward_action2.jsp">
		forward action : <input type="text" name="username">
		<input type="submit" value="Requst" />
	</form>
	<form method="post" action=response_sendRedirect.jsp>
		response.sendRedirect: <input type="text" name=username />
		<input type="submit" name="Response"/>
	</form>

</body>
</html>

<%-- 
 <jsp:forward> 액션태그 : 소스 코드가 복사되는 것이 아니라 제어권 자체가 forward 액션으로 지정된 
 페이지로 넘어갔다가 다시 원래 페이지로 돌아오지 못하고 forward 액션으로 지정된 페이지에서 종료된다 
--%>