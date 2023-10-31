<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
request.setCharacterEncoding("UTF-8");

//로그인한 사용자 정보 가져오기
Object username = session.getAttribute("user");

//msg 가져오기
String msg = request.getParameter("msg");

//메세지를 ArrayList에 저장하기
ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");

if(msgs == null){
	msgs = new ArrayList<String>();
	application.setAttribute("msgs", msgs);
}

//메세지 담기?
msgs.add(username+": "+msg);

response.sendRedirect("twitter_list.jsp");
%>