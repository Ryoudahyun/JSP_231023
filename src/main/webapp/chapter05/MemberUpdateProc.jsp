<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Commit</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mdto" class="model.MemberDTO" />
<jsp:setProperty name="mdto" property="*"/>
<%
MemberDAO mdao = new MemberDAO();
String pass = mdao.getPass(mdto.getId()); //데이터베이스에 있는 패스워드 가져오기

if(mdto.getPass1().equals(pass)){
	mdao.updateMember(mdto);
	response.sendRedirect("memberList.jsp");
} else {
%>
	<script type="text/javascript">
		alert('패스워드가 일치하지 않습니다.')
		history.go(-1);
	</script>
<%
}
%>

</body>
</html>