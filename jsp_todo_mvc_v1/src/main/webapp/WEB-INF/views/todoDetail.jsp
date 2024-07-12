<%@page import="com.tenco.model.TodoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<style>
/* 전체 배경 설정 */
body {
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* 컨테이너 스타일 */
.container {
    background-color: #ffffff;
    padding: 2rem 3rem;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 600px;
    text-align: left; /* 텍스트 왼쪽 정렬 */
    font-family: Arial, sans-serif; /* 폰트 설정 */
}

/* 제목 스타일 */
.container h2 {
    margin-bottom: 1.5rem;
    color: #333;
    font-size: 24px;
    font-weight: 600;
    text-align: center; /* 제목 중앙 정렬 */
}

/* 폼 그룹 스타일 */
.form-group {
    margin-bottom: 1rem;
}

.form-group label {
    display: block;
    margin-bottom: 0.5rem;
    color: #333;
    font-weight: 500;
}

.form-group input[type="text"], .form-group input[type="checkbox"] {
    width: calc(100% - 2px); /* 입력 필드 너비 설정 */
    padding: 0.75rem;
    margin: 0.5rem 0;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 16px;
    transition: border-color 0.3s;
}

.form-group input[type="text"]:focus {
    border-color: #007bff;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

/* 버튼 스타일 */
.container button {
    width: 100%;
    padding: 0.75rem;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 1rem;
}

.container button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
    <div class="container">
        <h2>상세보기</h2>
        <% 
        TodoDTO todo = (TodoDTO)request.getAttribute("todo");
        if(todo != null) { 
        %>
        <form action="update" method="post">
            <div class="form-group">
                <label for="title">제목:</label>
                <input type="text" id="title" name="title" value="<%= todo.getTitle() %>">
            </div>
            <div class="form-group">
                <label for="description">설명:</label>
                <input type="text" id="description" name="description" value="<%= todo.getDescription() %>">
            </div>
            <div class="form-group">
                <label for="dueDate">마감일:</label>
                <input type="text" id="dueDate" name="dueDate" value="<%= todo.getDueDate() %>">
            </div>
            <div class="form-group">
                <label for="completed">완료여부:</label>
                <input type="checkbox" id="completed" name="completed" <%= todo.CompletedToString().equals("true") ? "checked" : ""  %>>
            </div>
            <input type="hidden" name="id" value="<%= todo.getId() %>">
            <button type="submit">수정</button>
        </form>
        <hr>
        <p><strong>현재 정보:</strong></p>
        <p><strong>제목:</strong> <%= todo.getTitle() %></p>
        <p><strong>설명:</strong> <%= todo.getDescription() %></p>
        <p><strong>마감일:</strong> <%= todo.getDueDate() %></p>
        <p><strong>완료여부:</strong> <%= todo.CompletedToString().equals("true") ? "완료" : "미완료" %></p>
        <% 
        } else {
            out.print("<p>정보를 불러오는데 실패했습니다.</p>");
        }
        %>
    </div>
</body>
</html>
