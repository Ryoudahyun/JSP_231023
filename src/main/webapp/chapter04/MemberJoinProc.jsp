<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberJoinProc</title>
</head>
<body>
<center>
<h2>회원정보 보기</h2>
<%
request.setCharacterEncoding("UTF-8");
%>

<!-- 방법1. 각각 setting -->
<!-- MemberBean mbean = new MemberBean();와 같음 -->
<jsp:useBean id="mbean" class="jspbook.MemberBean" />
<jsp:setProperty name="mbean" property="id"/> <!-- mbean.id, mbean.SetId()와 같음 -->
<jsp:setProperty name="mbean" property="pass"/>
<jsp:setProperty name="mbean" property="email"/>
<jsp:setProperty name="mbean" property="tel"/>
<jsp:setProperty name="mbean" property="address"/>

<!-- 방법2. 전체 setting -->
<jsp:useBean id="mbean2" class="jspbook.MemberBean">
	<jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>


<h2>당신의 아이디는 <%= mbean.getId() %></h2><!-- 밑과 같은 방법 -->
<hr>
<h2>당신의 아이디는 <jsp:getProperty name="mbean" property="id"/></h2>
<h2>당신의 패스워드는 <jsp:getProperty name="mbean" property="pass"/></h2>
<h2>당신의 이메일은 <jsp:getProperty name="mbean" property="email"/></h2>
<h2>당신의 전화번호는 <jsp:getProperty name="mbean" property="tel"/></h2>
<h2>당신의 주소는 <jsp:getProperty name="mbean" property="address"/></h2>


</center>
</body>
</html>