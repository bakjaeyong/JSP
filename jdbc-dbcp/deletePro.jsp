<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "java.sql.*"%>
    
    <%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
   //String name = request.getParameter("name");
   //String pw = request.getParameter("pwd");
	
	//DBCP�� Ŀ�ؼ� ������
	Context initCtx=new InitialContext();
	Context envCtx=(Context)initCtx.lookup("java:comp/env");
	DataSource ds =(DataSource)envCtx.lookup("jdbc/jaeyong");
	Connection con=ds.getConnection();
	
	
	//3. ������ ������ ���� SQL�� ���� �Ƿ� �غ�
	String sql = "DELETE FROM login WHERE id=?;";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	//pstmt.setString(1, name);
	//pstmt.setString(2, pw);
	pstmt.setString(1, id);
	int i = pstmt.executeUpdate();
	pstmt.close();
	con.close();
	
	response.sendRedirect("list.jsp");
%>
    
    
    
