<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인치 변환기</title>
<style type="text/css">
.item {
    background-color: black;
    color: white;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
   
}

.b {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    align-content: stretch;
    margin-right: 10px;
    gap: 10px;

}
button{
    background-color: black;
    color: white;
}
</style>
</head>
<body>
	<header>
		<div class="item">
			<p>인치 변환기</p>
			<div class="b" style="justify-content: flex-end;">
				<button type="button" onclick="location.href='form_page.html'">변환기로..</button>
				<button type="button">그냥버튼</button>
			</div>
		</div>

	</header>
	<%@ include file="footer.jsp"%>