<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BoardReWriteForm</title>
<style>
#container {
	width: 70%;
	margin: 0 auto;
	padding-top: 5%;
	text-align: center;
}

div>#paging {
	text-align: center
}

#list {
	text-align: center;
}

#write {
	text-align: right;
}

.table {
	text-align: center;
	width: 700px;
	margin-left: auto;
	margin-right: auto;
}

.table>tbody>tr>th {
	text-align: center;
	background-color: #FFC8CD;
}
/* 표 인스턴스 */
.table-hover>tbody>tr>td {
	background-color: #FFF0F5;
}

.table-hover>tbody>tr>td:hover {
	background-color: #FFB2AF;
}

.table>tbody>tr>#title {
	text-align: left;
}

input[type="checkbox"], [type="radio"] {
	width: 30px;
}

input[type="submit"], [type="reset"], [type="button"] {
	height: 25px;
	width: 80px;
}

input[type="text"], [type="email"], [type="password"] {
	height: 100%;
	width: 350px;
}

/* 애니메이션 처리 */
.hit {
	animation-name: blink; /*  애니메이션 이름 */
	animation-duration: 1.5s; /*  애니메이션 동작시간 */
	animation-timing-function: ease; /* 시작과 종료시 부드럽게 처리 */
	animation-iteration-count: infinite; /* 무한반복 */
}

애니메니션 지점 설정
 @keyframes blink {
	from {color: white;
}

30%{color:yellow;
}
to {
	color: red;
	font-weight: bold;
}
}
</style>
</head>
<body>
	<center>
		<h2>답글 쓰기</h2>
		<form action="BoardReWriteProcCon.do" method="get">
			<table class="table table-striped table-bordered table-hover">
				<tbody>
					<tr height="40">
						<th width="200" align="center">작성자</th>
						<td>
							<input type="text" name="writer" size="30" style="background: transparent; outline: none;" />
						</td>
					</tr>
					<tr height="40">
						<th width="200" align="center">제목</th>
						<td>
							<input type="text" name="subject" size="60" value="[답변]" style="background: transparent; outline: none;" />
						</td>
					</tr>
					<tr height="40">
						<th width="200" align="center">이메일</th>
						<td>
							<input type="email" name="email" size="60" style="background: transparent; outline: none;" />
						</td>
					</tr>
					<tr height="40">
						<th width="200" align="center">패스워드</th>
						<td>
							<input type="password" name="password" size="60" style="background: transparent; outline: none;" />
						</td>
					</tr>
					<tr height="40">
						<th width="200" align="center">글내용</th>
						<td>
						<textarea name="content" rows="10" cols="50" style="background: transparent; outline: none;" ></textarea>
						</td>
					</tr>
					<tr height="40">
						<th colspan="2" align="center">
							<input type="hidden" name="ref" value="${ref }" />
							<input type="hidden" name="re_step" value="${re_step }" />
							<input type="hidden" name="re_level" value="${re_level }" />
							<input type="submit" value="답글작성" />&nbsp;&nbsp;
							<input type="reset" value="취소" />&nbsp;&nbsp;
							<input type="button" value="목록보기" onclick="location.href='BoardList.jsp'" />&nbsp;&nbsp;
						</th>
					</tr>
				</tbody>
			</table>
		</form>
	</center>
</body>
</html>