<%@page import="model.MemberDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	/* 테이블에 대한 스타일 */
	table {
		border-collapse: collapse;
		/* 테두리선을 한 줄로 합치기 */
	}
	
	/* 테이블의 각 셀에 대한 스타일 */
	table td, table th {
		border: 1px solid black;
		/* 검은색 1px 두께의 테두리 적용 */
	}
</style>
</head>
<body>
	<center>
		<h2>전체 회원 보기</h2>
		<%
		MemberDAO mdao = new MemberDAO();
		Vector<MemberDTO> v = mdao.allSelectMember();
		%>
		<table width="1000" border="1">
			<tr height="40">
				<td width="120" align="center">아이디</td>
			 	<td width="120" align="center">이메일</td>
			 	<td width="120" align="center">전화번호</td>
			 	<td width="120" align="center">취미</td>
			 	<td width="120" align="center">직업</td>
 			</tr>
			<%
			for(int i = 0; i<v.size(); i++){
				MemberDTO bean = v.get(i);
			%>
			<tr height="40">
				<td width="120" align="center">
					<a href="MemberInfo.jsp?id=<%= bean.getId() %>">				
						<%= bean.getId() %>
					</a>
				</td>
				<td width="120" align="center">				
					<%= bean.getEmail() %>
				</td>
				<td width="120" align="center">				
					<%= bean.getPhone() %>
				</td>
				<td width="120" align="center">				
					<%= bean.getHobby() %>
				</td>
				<td width="120" align="center">				
					<%= bean.getJob() %>
				</td>
			</tr>
			<%
			}
			%>		
		</table>
	</center>
</body>
</html>