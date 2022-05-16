<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title =	request.getParameter("title");
	request.setAttribute("title", title);
	//DBCP로 커넥션 얻어오기
		Context initCtx=new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource)envCtx.lookup("jdbc/jaeyong");
		Connection con=ds.getConnection();
	
	// 3. 연결후 그 통로를 통해 SQL문을 실행한다.
	String sql = "select * from board where title=?";
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setString(1,title);
	
	//4 SQL 실행
	ResultSet rs = pstmt.executeQuery();
	String name="";
	String pw="";
	while(rs.next()){
		name = rs.getString("name");
		pw = rs.getString("pwd");
		
	}
	//5. 객체 해제
	rs.close();
	pstmt.close();
	con.close();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 폼 만들기</title>
</head>
<body>
<form action="BoardInsertPro.jsp" method="post">
	<table>
	  <tr>
	   <td>
	    <table width="100%" cellpadding="0" cellspacing="0" border="0">
	     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
	      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
	      <td>글쓰기</td>
	      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
	     </tr>
	    </table>
	   <table>
	     <tr>
	      <td>
	      </td>
	      <td align="center">제목</td>
	      <td><input name="title" size="50" maxlength="100" name="title"></td>
	      <td>
		</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	    <tr>
	      <td> </td>
	      <td align="center">이름</td>
	      <td><input name="name" size="50" maxlength="50" name="name"></td>
	      <td> </td>
	     </tr>
	      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	    <tr>
	      <td> </td>
	      <td align="center">비밀번호</td>
	      <td><input name="pwd" size="50" maxlength="50" name="pwd"></td>
	      <td> </td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	     <tr>
	      <td> </td>
	      <td align="center">내용</td>
	      <td><textarea name="content" cols="50" rows="13"></textarea></td>
	      <td> </td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
	     <tr align="center">
	      <td> </td>
	      <td colspan="5"><input type="submit" value="등록">
	      <td> </td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	 </table>
	 <button onclick="location.href='Boardlist.jsp'">목록 돌아가기</button>
 </form>
          
</body>
</html>
