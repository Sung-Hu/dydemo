<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.contanier{
	display: flex;
	flex-wrap: wrap;
	border: 2px solid #333;
	padding: 10px;
	height: 350px;
	background-color: #990000;
	flex-direction: row;
}

.item1{
    display: flex;
    width: 100px;
    height: 100px;
    background-color: yellow;
	
}
.item2{
	display: flex;
	width: 100px;
	height: 100px;
	background-color: yellow;
}
.item3{
	display: flex;
	width: 100px;
	height: 100px;
	background-color: yellow;
}
</style>
</head>
<body>
	<div class="contanier" style="align-items: center;">
	<div class="item1">item1</div>
	</div>
	
	<div class="contanier" style="align-items: center; justify-content: center;" >
	<div class="item2">item2</div>
	</div>
	
	<div class="contanier" style="align-items: flex-end;">
	<div class="item3">item3</div>
	</div>
</body>
</html>