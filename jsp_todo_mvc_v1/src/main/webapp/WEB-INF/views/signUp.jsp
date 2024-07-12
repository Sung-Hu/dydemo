<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" type="text/css" href="../../css/styles.css">
<style>
/* 추가한 스타일 */
body {
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #ffffff;
    padding: 2rem 3rem;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    text-align: center;
}

.container h2 {
    margin-bottom: 1.5rem;
    color: #333;
    font-size: 24px;
    font-weight: 600;
}

.container p {
    color: red;
}

.form-group {
    margin-bottom: 1rem;
    text-align: left;
}

.form-group label {
    display: block;
    margin-bottom: 0.5rem;
    color: #333;
    font-weight: 500;
}

.form-group input {
    width: 100%;
    padding: 0.75rem;
    margin: 0.5rem 0;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 16px;
    transition: border-color 0.3s;
}

.form-group input:focus {
    border-color: #007bff;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

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
        <h2>회원가입</h2>
        <% 
        String errorMessage = (String)request.getParameter("Message");
        if(errorMessage != null) { 
        %>
        <p><%= errorMessage %></p>
        <% } %>
        
        <form action="/mvc/user/signUp" method="post">
            <div class="form-group">
                <label for="username">사용자 이름:</label>
                <input type="text" id="username" name="username" value="야스오1">
            </div>
            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" value="1234">
            </div>
            <div class="form-group">
                <label for="email">이메일:</label>
                <input type="text" id="email" name="email" value="a@nate.com">
            </div>
            <button type="submit">회원가입</button>
        </form>
    </div>
</body>
</html>
