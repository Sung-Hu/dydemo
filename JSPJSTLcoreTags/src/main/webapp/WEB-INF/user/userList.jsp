<%@page import="java.util.List"%>
<%@page import="com.tenco.mdels.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>USERLIST PAGE</h1>
	<%
		List<User> userList = (List<User>)request.getAttribute("userList");
	%>
	<table border="1">
	<tr>
	<th>ID</th>
	<th>이름</th>
	<th>이메일</th>
	</tr>
	<%
	for(User user : userList){%>
	<td><%=user.getId()%></td>
	<td><%=user.getUsername()%></td>
	<td><%=user.getPassword()%></td>
	<% } %>
	</table>
</body>
</html>