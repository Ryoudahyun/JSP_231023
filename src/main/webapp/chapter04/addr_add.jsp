<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="addr" class="jspbook.AddrBean" />
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.AddrManager" scope="application" />

<%
am.add(addr);	//주소록에 등록

%>
<div align="center">
	<h2>등록내용</h2>
	이름: <jsp:getProperty name="addr" property="username"/> <br>
	전화번호: <jsp:getProperty name="addr" property="tel"/> <br>
	이메일: <%= addr.getEmail() %> <br>
	성별: <%= addr.getGender() %> <br>
	<hr>
	<a href="addr_list.jsp">목록보기</a>
</div>

</body>
</html>