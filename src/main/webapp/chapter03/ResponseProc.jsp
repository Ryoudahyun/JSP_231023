<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResponseProc</title>
</head>
<body>
	<%
	//고정으로 id 값을 부여
	String dbid = "soldesk";
	String dbpass = "12345";
	
	//request 객체에 저장되어 있는 id 값을 가져오기
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	//아이디 비번이 같다면 ResponseLogin.jsp 제어권을 넘김
	if(dbid.equals(id) && dbpass.equals(pass)){
		session.setAttribute("id", id);	//session 영역에 저장(브라우저?)
		response.sendRedirect("ResponseLogin.jsp");
		
		//GET 방식
		//response.sendRedirect("ResonseLogin.jsp?id=id&pass=pass");
		
	} else{
		%>
		<script type="text/javascript">
			alert("아이디가 틀립니다.")
			history.go(-1);
		</script>
		<%
		/* response.sendRedirect("Login.jsp"); */
	}
	%>
	
	이 문장이 나올까?
</body>
</html>