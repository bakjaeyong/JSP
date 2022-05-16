<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%

	out.println("오늘 날짜:"+LocalDate.now()+"<br>");   //스크립틀릿 기본사용방법 <br>은 줄바꿈
	out.println("현재 시간:"+LocalTime.now()+"<br>");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;의도적인공백"+"<br>");//공백주는법
	
%>
오늘날짜:<%=LocalDate.now()%><br>   <!-- 표현식 사용법 -->
현재시간:<%=LocalTime.now()%>
</body>
</html>