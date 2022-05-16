<%@page import="cs.dit.LoginDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.dit.LoginDao"%>
<%-- <%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	LoginDao dao = new LoginDao();
	ArrayList<LoginDto> dtos = dao.list();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>	
	<h1 class="text-center font-weight-bold">회원 정보</h1>
	<br>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
<% 
	for(LoginDto dto : dtos){
%>	
		<tr>
			<td><a href="updateForm.jsp?id=<%=dto.getId() %>"><%=dto.getId() %></a></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getPwd() %></td>
		</tr>
<%	} %>
	</table>
	</div>	
</body>
</html>