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

	out.println("���� ��¥:"+LocalDate.now()+"<br>");   //��ũ��Ʋ�� �⺻����� <br>�� �ٹٲ�
	out.println("���� �ð�:"+LocalTime.now()+"<br>");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ǵ����ΰ���"+"<br>");//�����ִ¹�
	
%>
���ó�¥:<%=LocalDate.now()%><br>   <!-- ǥ���� ���� -->
����ð�:<%=LocalTime.now()%>
</body>
</html>