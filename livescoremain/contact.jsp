<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : 라이브 스코어 사이트 메인 페이지.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>LiveScore</title>
</head>
<body>
	<div id="header">
		<h1>Live Score</h1>
		<ul id="navigation">
			<li>
				<a href="index.jsp">home</a>
			</li>
			<li>
				<a href="football.jsp">football</a>
			</li>
			<li>
				<a href="baseball.jsp">baseball</a>
			</li>
			<li>
				<a href="basketball.jsp">basketball</a>
			</li>
			<li>
				<a href="news.jsp">news</a>
			</li>
			<li  class="selected">
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
		<div id="body">
		<h1><span>let's keep in touch</span></h1>
		<form action="#">
			<input type="text" name="fname" id="fname" value="name">
			<input type="text" name="address" id="address" value="address">
			<input type="text" name="email" id="email" value="email">
			<input type="text" name="phone" id="phone" value="phone number">
			<textarea name="message" id="message">message</textarea>
			<input type="submit" name="send" id="send" value="send">
		</form>
	</div>
	<br><br><br><br><br>
</body>
</html>