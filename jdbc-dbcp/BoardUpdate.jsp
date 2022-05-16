<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	
	//DBCP로 커넥션 얻어오기
		Context initCtx=new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource)envCtx.lookup("jdbc/jaeyong");
		Connection con=ds.getConnection();
	
	String sql = "update board set title=?, content=? where name=?;";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, name);
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	response.sendRedirect("Boardlist.jsp");
%>