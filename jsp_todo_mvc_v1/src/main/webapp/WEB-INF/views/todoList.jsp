<%@page import="java.util.Date"%>
<%@page import="com.tenco.model.TodoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할 일 목록</title>
<style>
/* 전체 배경 설정 */
body {
    background-color: #f0f2f5;
    font-family: Arial, sans-serif; /* 폰트 설정 */
}

/* 컨테이너 스타일 */
.container {
    background-color: #ffffff;
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 800px;
    margin: 20px auto;
}

/* 제목 스타일 */
.container h2 {
    margin-bottom: 1rem;
    color: #333;
    font-size: 24px;
    font-weight: 600;
}

/* 링크 스타일 */
.container a {
    color: #007bff;
    text-decoration: none;
    display: inline-block;
    margin-bottom: 1rem;
}

.container a:hover {
    text-decoration: underline;
}

/* 테이블 스타일 */
.container table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 1rem;
}

.container th, .container td {
    padding: 0.75rem;
    text-align: center;
    border: 1px solid #ddd;
}

.container th {
    background-color: #f0f0f0;
    color: #333;
    font-weight: 600;
}

.container td {
    background-color: #fff;
    color: #333;
}

.container td a {
    color: #007bff;
    text-decoration: none;
}

.container td a:hover {
    text-decoration: underline;
}

.container td form {
    display: inline;
    margin-left: 0.5rem;
}

.container button {
    padding: 0.5rem;
    background-color: #dc3545;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.container button:hover {
    background-color: #c82333;
}
</style>
</head>
<body>
    <div class="container">
        <h2>할 일 목록</h2>
        <a href="todoForm">새 할 일 추가</a>

        <% 
        List<TodoDTO> todoList = (List<TodoDTO>)request.getAttribute("list");
        if (todoList != null && !todoList.isEmpty()) {
        %>
        <table>
            <tr>
                <th>제목</th>
                <th>설명</th>
                <th>마감일</th>
                <th>완료 여부</th>
                <th>액션</th>
            </tr>
            <% 
            for (TodoDTO todo : todoList) {
            %>
            <tr>
                <td><%= todo.getTitle() %></td>
                <td><%= todo.getDescription() %></td>
                <td><%= todo.getDueDate() %></td>
                <td><%= todo.CompletedToString().equals("true") ? "완료" : "미완료" %></td>
                <td>
                    <a href="detail?id=<%= todo.getId() %>">상세보기</a>
                    <form action="delete" method="get">
                        <input type="hidden" name="id" value="<%= todo.getId() %>">
                        <button type="submit">삭제</button>
                    </form>
                </td>
            </tr>
            <% 
            }
            %>
        </table>
        <% 
        } else {
        %>
        <hr>
        <p>등록된 할 일이 없습니다.</p>
        <% 
        }
        %>
    </div>
</body>
</html>
