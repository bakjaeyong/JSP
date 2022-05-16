<!--
 작성자 :
 변경이력 :
 프로그램 설명 :
 
-->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("EUC-KR");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	loginDao dao = new loginDao();
	int check = dao.checkUser(id, pwd);
	
	if(check==1){
		response.sendRedirect("welcome.jsp");
	}else{
		response.sendRedirect("insertForm.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	이쪽으로 넘어옵니다..!
</body>
</html>