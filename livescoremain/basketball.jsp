<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : 농구 경기결과, 경기일정 상세 페이지.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Basketball</title>
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
			<li class="selected">
				<a href="basketball.jsp">basketball</a>
			</li>
			<li>
				<a href="news.jsp">news</a>
			</li>
			<li>
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
	<div id="body">
		<h1><span>basketball</span></h1>
		<div>
			<!-- <img src="images/photographer.jpg" alt=""> -->
			<div class="article">
				<h3>Example Title here</h3>
				<p>Example description here Example description here Example description here</p>
			</div>
			
			<div class="gameResultBorder">
				<div class="result">
					<ul>
						<li>A Team 3 : 2 B Team</li>
						<li>A Team 3 : 1 B Team</li>
						<li>A Team 3 : 0 B Team</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>