<!-- posts.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시판</title>
</head>
<body>
    <h1>게시판</h1>
    
    <c:forEach var="post" items="${posts}">
        <div>
            <h2>${post.title}</h2>
            <p>${post.content}</p>
            <p>작성자: ${post.author}</p>
            <p>작성일시: ${post.created_at}</p>
        </div>
    </c:forEach>
    
    <hr>
    <a href="write.jsp">글쓰기</a>
    <a href="logout">로그아웃</a>
</body>
</html>
