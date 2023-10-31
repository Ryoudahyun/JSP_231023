<%@page import="model.MemberDAO"%>
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

<jsp:useBean id="mdto" class="model.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>

<%
MemberDAO mdao = new MemberDAO(); 
//스트링 타입으로 저장되어 있는 패스워드를 가져옴(데이터베이스에서 가져온 pass 값이 저장)
String pass = mdao.getPass(mdto.getId());

//삭제하기 위해서 작성한 패스워드 값과 기존 데이터베이스에서 가져온 패스워드 값을 비교
if(mdto.getPass1().equals(pass)){	//같으면 member table 수정
	
	//MemberDAO 클래스의 회원삭제 메소드 호출
	mdao.deleteMember(mdto.getId());
%>
	<script type="text/javascript">
	alert("삭제 완료");
	location.replace("MemberList.jsp");
	</script> 
<%	
	response.sendRedirect("memberList.jsp");
} else {
%>	
	<script type="text/javascript">
	alert("패스워드가 일치하지 않습니다.")
	history.go(-1);
	</script>
<%
}
%>


</body>
</html>