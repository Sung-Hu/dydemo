<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 할 일 추가</title>
<style>
/* 전체 배경 설정 */
body {
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family: Arial, sans-serif; /* 폰트 설정 */
}

/* 폼 컨테이너 스타일 */
.container {
    background-color: #ffffff;
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 600px;
    text-align: center;
}

/* 제목 스타일 */
.container h1 {
    margin-bottom: 1.5rem;
    color: #333;
    font-size: 24px;
    font-weight: 600;
}

/* 폼 그룹 스타일 */
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

.form-group input[type="text"], .form-group textarea, .form-group input[type="date"], .form-group input[type="checkbox"] {
    width: calc(100% - 2px); /* 입력 필드 너비 설정 */
    padding: 0.75rem;
    margin: 0.5rem 0;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 16px;
    transition: border-color 0.3s;
}

.form-group textarea {
    resize: vertical; /* 텍스트 영역의 크기 조절 허용 */
}

.form-group input[type="text"]:focus, .form-group textarea:focus {
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

/* 링크 스타일 */
.container a {
    color: #007bff;
    text-decoration: none;
    display: block;
    margin-top: 1rem;
}

.container a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
    <div class="container">
        <h1>여기는 투두뽀옴!! 입니다</h1>
        <form action="add" method="post">
            <div class="form-group">
                <label for="title">제목:</label>
                <input type="text" id="title" name="title" value="코딩연습 무한반복">
            </div>
            <div class="form-group">
                <label for="description">설명:</label>
                <textarea rows="5" id="description" name="description">그래야 성공하고 높은 연봉은 기본 ... 아니면 워라벨... 그런데 나는 워라벨이 좋아...</textarea>
            </div>
            <div class="form-group">
                <label for="dueDate">마감기한:</label>
                <input type="date" id="dueDate" name="dueDate" value="2024-07-10">
            </div>
            <div class="form-group">
                <input type="checkbox" id="completed" name="completed">
                <label for="completed">완료 여부</label>
            </div>
            <button type="submit">추가</button>
        </form>
        <br>
        <a href="list">목록으로~</a>
    </div>
</body>
</html>
