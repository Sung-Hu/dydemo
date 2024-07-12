<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link rel="icon" href="favicon.ico" type="image/x-icon">
</head>
<body>
	<div class="container">
		<h2>폼 예제</h2>
		<form action="result.jsp" method="post">
		<label for="username">Username: </label>
		<input type="text" id="username" value="야스오">
		<br><br>
		<label>취미를 선택하세요</label><br>

		<input type="checkbox" id="bobby1" name="hobbies" value="축구">
		<label for="bobby1">축구</label><br>

		<input type="checkbox" id="bobby2" name="hobbies" value="농구">
		<label for="bobby2">농구</label><br>

		<input type="checkbox" id="bobby3" name="hobbies" value="독서">
		<label for="bobby3">독서</label><br>

		<input type="checkbox" id="bobby4" name="hobbies" value="코딩">
		<label for="bobby4">코딩</label><br>
				
			      <hr>
            <label>좋아하는 나라를 선택하세요</label>
            <input type="radio" id = "color1" name="favoriteColor" value="위나라">
            <label for="color1">위나라</label>

            <input type="radio" id = "color2" name="favoriteColor" value="촉나라">
            <label for="color2">촉나라</label>

            <input type="radio" id = "color3" name="favoriteColor" value="오나라">
            <label for="color3">오나라</label><br>
		<button type="submit">제출</button>
		</form>
	</div>
</body>
</html>