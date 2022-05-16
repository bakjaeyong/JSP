<%@page import="cs.dit.LoginDto"%>
<%@page import="cs.dit.LoginDao"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%	request.setCharacterEncoding("utf-8");
	//연결 정보와 SQL
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	LoginDao dao = new LoginDao();
	LoginDto dto = new LoginDto(id,name,pwd);
	dao.insert(dto);
	
	response.sendRedirect("list.jsp");
%>
