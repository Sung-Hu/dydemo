<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String username = "김성후";
    String username2 = "배병호";
    int age = 21;
 //   Date date = new Date();
    session.setAttribute("username", username);
    session.setAttribute("age", age);
    session.getCreationTime();
    session.getId();
    session.getMaxInactiveInterval();
    session.invalidate();
  //  session.removeAttribute("username2");
    session.setMaxInactiveInterval(10);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 설정</title>
</head>
<body>
	<h2>세션 설정이 완료 되었습니다.</h2>
	<a href="getSession.jsp">세션 읽어 보기</a>
</body>
</html>