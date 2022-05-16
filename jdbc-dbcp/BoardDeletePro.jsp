<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "java.sql.*"%>
    
    <%
	request.setCharacterEncoding("utf-8");
    String title = request.getParameter("title");
  //DBCP로 커넥션 얻어오기
  	Context initCtx=new InitialContext();
  	Context envCtx=(Context)initCtx.lookup("java:comp/env");
  	DataSource ds =(DataSource)envCtx.lookup("jdbc/jaeyong");
  	Connection con=ds.getConnection();
	
	
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "DELETE FROM board WHERE title=?;";
	
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	int i = pstmt.executeUpdate();
	pstmt.close();
	con.close();
	
	response.sendRedirect("Boardlist.jsp");
%>
    