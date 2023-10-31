<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
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
<%
request.setCharacterEncoding("UTF-8");
%>
	<h2>회원가입</h2>
	<form action="MemberDBJoin.jsp" method="post">
		<table width="600" border="1">
			<tr height="40">
				<td width="200" align="center">아이디</td>
				<td width="400" align="left">
					<input type="text" name="id" styel="border: none; outline: none;" />
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">패스워드</td>
				<td width="400" align="left">
					<input type="password" name="pass1" style="border: none; outline: none;"/>
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">패스워드확인</td>
				<td width="400" align="left">
					<input type="password" name="pass2" style="border: none; outline: none;"/>
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">이메일</td>
				<td width="400" align="left">
					<input type="email" name="email" style="border: none; outline: none;" />
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">성별</td>
				<td width="400" align="left">
					<input type="radio" name="gender" value="남"/>남 
					<input type="radio" name="gender" value="여"/>여
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">주소</td>
				<td width="400" align="left">
					<input type="text" name="address" style="border: none; outline: none;">
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">전화번호</td>
				<td width="400" align="left">
					<input type="text" name="phone" style="border: none; outline: none;">
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">당신의 관심분야</td>
				<td width="400" align="left">
					<input type="checkbox" name="hobby" value="여행" />여행 &nbsp;&nbsp; 
					<input type="checkbox" name="hobby" value="등산" />등산 &nbsp;&nbsp; 
					<input type="checkbox" name="hobby" value="음악" />음악 &nbsp;&nbsp; 
					<input type="checkbox" name="hobby" value="독서" />독서 &nbsp;&nbsp;
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">당신의 직업은</td>
				<td width="400" align="left">
					<select name="job">
						<option value="교사" selected>교사</option>
						<option value="요리사">요리사</option>
						<option value="회사원">회사원</option>
						<option value="건물주">건물주</option>
					</select>
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">당신의 연령은</td>
				<td width="400" align="left">
					<input type="radio" name="age" value="10"/>10대 
					<input type="radio" name="age" value="20"/>20대 
					<input type="radio" name="age" value="30"/>30대 
					<input type="radio" name="age" value="40"/>40대
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">하고싶은말</td>
				<td width="400" align="left">
					<textarea name="info" cols="40" rows="5"></textarea>
				</td>
			</tr>
			<tr height="40">
				<td width="600" align="center" colspan="2">
					<input type="submit" value="확인" /> 
					<input type="reset" value="취소" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>