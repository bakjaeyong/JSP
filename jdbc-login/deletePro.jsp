<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "java.sql.*"%>
    
    <%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
   //String name = request.getParameter("name");
   //String pw = request.getParameter("pwd");
	
	//1. DB ���� ����̹� �ε�
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. ���� ��ü ����
	String url = "jdbc:mariadb://localhost:3307/jaeyongdb";
	String user = "jaeyong";
	String pwd= "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	
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
    
    
    
