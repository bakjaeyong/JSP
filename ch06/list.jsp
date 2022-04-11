<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "java.sql.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DB 연동</title>
</head>
<body>
	<%
	//1. jdbc driver를 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와의 연결(connection)을 생성한다.
	String url ="jdbc:mariadb://localhost:3306/jaeyongdb";
	String user ="jaeyong";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. 연결 후 그 통로를 통해 sql문을 실행한다.
	String sql = "select * from login";
	Statement stmt=con.createStatement();
	
	//4. SQL 실행
	ResultSet rs = stmt.executeQuery(sql);
	
	//5. 반환된 데이터 출력
	while(rs.next()){
		out.println(rs.getString("id"));
		out.println(rs.getString("pwd"));
		out.println("<br>");
	}
	
	//6. 객체 해지
	rs.close();
	stmt.close();
	con.close();
	%>
</body>
</html>