<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String productname = request.getParameter("product");
/* session.getAttribute를 이용해서 ArrayList 객체 생성 => 객체 이름은 productlist */ 
ArrayList<String> list = (ArrayList)session.getAttribute("productlist"); /* get인 이유는 공간확보 */

if(list == null){
	list = new ArrayList<String>();
	session.setAttribute("productlist", list);
}
//----------^Arraylist화 되어 있는 session^----------
list.add(productname);
%>
<script>
	alert("<%= productname %>이 추가 되었습니다.");
	history.go(-1);
</script>
</body>
</html>