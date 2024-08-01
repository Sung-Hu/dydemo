<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인!</title>
<style>
/* Reset some basic styles for consistency across browsers */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

body {
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container for the form */
.container {
    background-color: #ffffff;
    padding: 2rem 3rem;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    text-align: center;
}

/* Styling the title */
.container h2 {
    margin-bottom: 1.5rem;
    color: #333;
    font-size: 24px;
    font-weight: 600;
}

/* Styling for the form messages */
.message {
    margin-bottom: 1rem;
    padding: 0.75rem;
    border-radius: 4px;
}

.message.success {
    background-color: #d4edda;
    color: #155724;
}

.message.error {
    background-color: #f8d7da;
    color: #721c24;
}

/* Styling for the form groups */
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

/* Styling for the form buttons */
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

/* Styling for the links */
.container a {
    color: #007bff;
    text-decoration: none;
    display: block;
    margin-top: 1rem;
}

.container a:hover {
    text-decoration: underline;
}

/* Adding a logo or icon */
.logo {
    width: 50px;
    margin-bottom: 1rem;
}
</style>
</head>
<body>
    <div class="container">
        <!-- 로고 추가 -->
        <img src="https://cdn.icon-icons.com/icons2/2429/PNG/512/fancy_logo_icon_147290.png" alt="Logo" class="logo">
        <h2>로그인</h2>
        <!-- 성공 메세지 출력 -->
        <c:if test="${not empty param.message}">
        <p class="message success">${param.message}</p>
        </c:if>

        <!-- 절대 경로로 주소를 설계 해보자 -->
        <form action="/mvc/user/signIn" method="post">
            <div class="form-group">
                <label for="username">사용자 이름 :</label>
                <input type="text" id="username" name="username" value="야스오1">
            </div>
            <div class="form-group">
                <label for="password">비밀 번호 :</label>
                <input type="password" id="password" name="password" value="1234">
            </div>
            <button type="submit">로그인</button>
        </form>
        <a href="/mvc/user/signUp">회원가입</a>
    </div>
</body>
</html>
