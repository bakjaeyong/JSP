<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "java.sql.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DB ����</title>
</head>
<body>
	<%
	//1. jdbc driver�� �ε��Ѵ�.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db���� ����(connection)�� �����Ѵ�.
	String url ="jdbc:mariadb://localhost:3306/jaeyongdb";
	String user ="jaeyong";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. ���� �� �� ��θ� ���� sql���� �����Ѵ�.
	String sql = "select * from login";
	Statement stmt=con.createStatement();
	
	//4. SQL ����
	ResultSet rs = stmt.executeQuery(sql);
	
	//5. ��ȯ�� ������ ���
	while(rs.next()){
		out.println(rs.getString("id"));
		out.println(rs.getString("pwd"));
		out.println("<br>");
	}
	
	//6. ��ü ����
	rs.close();
	stmt.close();
	con.close();
	%>
</body>
</html>