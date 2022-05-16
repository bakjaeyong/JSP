<%@page import="cs.dit.LoginDao"%>
<%@page import="cs.dit.LoginDto"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
<%	
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	LoginDto dto = new LoginDto(id, name, pwd);
	LoginDao dao = new LoginDao();
	dao.delete(dto);
%>
	
<script>
		let ans = alert("삭제되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
</script>