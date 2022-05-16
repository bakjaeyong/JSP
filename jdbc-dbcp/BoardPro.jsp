<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%	request.setCharacterEncoding("utf-8");
	//연결 정보와 SQL
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String pw = request.getParameter("pwd");
	String content = request.getParameter("content");
	
	//DBCP로 커넥션 얻어오기
		Context initCtx=new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource)envCtx.lookup("jdbc/jaeyong");
		Connection con=ds.getConnection();
	
	
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "INSERT INTO board(title,name,pwd,content) VALUES(?,?,?,?);";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	//pstmt.setString(3, pwd);
	pstmt.setString(4, content);
	
	
	//4. SQL 실행
	int i = pstmt.executeUpdate();
	
	//5. 객체 해제
	pstmt.close();
	con.close();
	
	response.sendRedirect("Boardlist.jsp");
%>

