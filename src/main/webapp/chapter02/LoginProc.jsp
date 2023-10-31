<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>LoginProc</title>
</head>
<body>
	<%
	//한글깨짐방지
	request.setCharacterEncoding("UTF-8"); 
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	%>
	
	당신의 id=<%=id %>이고, 패스워드는 pass=<%=pass %>입니다.
	
</body>
</html>