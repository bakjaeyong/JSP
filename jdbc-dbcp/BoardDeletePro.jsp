<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "java.sql.*"%>
    
    <%
	request.setCharacterEncoding("utf-8");
    String title = request.getParameter("title");
  //DBCP�� Ŀ�ؼ� ������
  	Context initCtx=new InitialContext();
  	Context envCtx=(Context)initCtx.lookup("java:comp/env");
  	DataSource ds =(DataSource)envCtx.lookup("jdbc/jaeyong");
  	Connection con=ds.getConnection();
	
	
	//3. ������ ������ ���� SQL�� ���� �Ƿ� �غ�
	String sql = "DELETE FROM board WHERE title=?;";
	
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	int i = pstmt.executeUpdate();
	pstmt.close();
	con.close();
	
	response.sendRedirect("Boardlist.jsp");
%>
    