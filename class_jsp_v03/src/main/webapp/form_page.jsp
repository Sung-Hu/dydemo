<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>

	<h1>계산 결과</h1>
	<!-- html 주석 입니다. -->
	<%-- JSP 주석 입니다. --%>
	<%
		// 스크립트 릿 태그
		// 폼에서 데이터 추출
		String num1Str = request.getParameter("num1");
		
		// 방어적 코드 작성
		if(num1Str != null && !num1Str.isEmpty()){
			try{
				double num1 = Double.parseDouble(num1Str);
				double inch = num1 / 2.54;
				
				String inchValue = String.format("%.2f", inch);
				out.println("<p>변환값은 : " + inchValue + " 입니다.</p>");
				
			}catch(NumberFormatException e){
				
			}
		}
	
		// 계산에 결과를 스트림을 통해 내려주기
		
	%>
	<a href="header.jsp">홈으로..</a>
	
	<%@ include file="footer.jsp"%>