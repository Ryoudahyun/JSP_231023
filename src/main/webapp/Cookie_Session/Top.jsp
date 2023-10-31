<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>
</head>
<body>
<%
	//로그인
	//로그인 버튼을 누른 상태. 세션을 통해서 id를 읽어드리기
	String id = (String)session.getAttribute("id");
	
	//로그인이 되어있지 않으면 session에 null 처리를 해주고 id 변수에 Guest를 저장
	if(id == null){
		id = "Guest";
	}
	
	//로그아웃
	//로그아웃 클릭시 파라미터를 통해서 로그아웃 여부 판단
	String logout = request.getParameter("logout"); //1

	if(logout != null){ //로그인 되어있는 상태(1)
		//id에 null 값을 부여하여 로그아웃 수행
		session.setAttribute("id", null);
		session.setMaxInactiveInterval(0);
	}
	
%>
	<center>
		<table width="1200">
			<tr height="100">
				<td colspan="2" align="center" width="220">
					<img src="./img/logo.jpg" width="220" height="70" />
				</td>
				<td align="center" colspan="4">
					<font size="10" color="orange">My Own Spring Camp</font>
				</td>
			</tr>
			<tr height="50">
				<td width="130" align="center">
					<a href="IncludeTest.jsp?camping=1" style="text-decoration: none;">Tent</a> <!-- text-decoration: none: 밑줄사라짐 -->				
				</td>
				<td width="130" align="center">
					<a href="IncludeTest.jsp?camping=2" style="text-decoration: none;">Chair</a>
				</td>
				<td width="130" align="center">
					<a href="IncludeTest.jsp?camping=3" style="text-decoration: none;">Dishware</a>
				</td>
				<td width="130" align="center">
					<a href="IncludeTest.jsp?camping=4" style="text-decoration: none;">Sleeping Bag</a>
				</td>
				<td width="130" align="center">
					<a href="IncludeTest.jsp?camping=5" style="text-decoration: none;">Lantern</a>
				</td>
				<td width="130" align="center">
					<a href="IncludeTest.jsp?camping=6" style="text-decoration: none;">Table</a>
				</td>
				<td width="170" align="center">
					<%
						if(id.equals("Guest")){
					%>
							<%=id %>님 <button onclick="location.href='IncludeTest.jsp?camping=7'" >로그인</button>
					<% }else{ %>
							<%=id %>님 <button onclick="location.href='IncludeTest.jsp?logout=1'" >로그아웃</button>
							
					<%
						}
					%>
				</td>
			</tr>	
		</table>
	</center>
</body>
</html>