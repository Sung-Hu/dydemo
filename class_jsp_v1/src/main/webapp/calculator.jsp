<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
</head>
<body>
	<h1>계산 결과</h1>
	<!-- html 주석 입니다. -->
	<%-- JSP 주석 입니다. --%>
	<%
		// 스크립트 릿 태그
		// 폼에서 데이터 추출
		String num1Str = request.getParameter("num1");
		String num2Str = request.getParameter("num2");
		
		// 방어적 코드 작성
		if(num1Str != null && num2Str != null){
			try{
				int num1 = Integer.parseInt(num1Str);
				int num2 = Integer.parseInt(num2Str);
				
				int sum = num1 + num2;
				out.println("<p>" + num1 + " 와 " + num2 + "의 합은" + sum + "</p>");
			}catch(NumberFormatException e){
				out.print("<p> 유효한 숫자를 입력해주세요 </p>");
			}
		} else{
			out.print("<p> 두 숫자를 모두 입력하세요 </p>");
		}
		// 계산에 결과를 스트림을 통해 내려주기
		
	%>
	<a href="calculator.form.html">돌아가기</a>
</body>
</html>