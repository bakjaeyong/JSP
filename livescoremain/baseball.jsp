<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : 야구 경기결과, 경기일정 상세 페이지.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Baseball</title>
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
			<li class="selected">
				<a href="baseball.jsp">baseball</a>
			</li>
			<li>
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
		<h1><span>baseball</span></h1>
		<div>
			<!-- <img src="images/photographer.jpg" alt=""> -->
			<div class="article">
				<h3>Example Title here</h3>
				<p>Example description here Example description here Example description here</p>
			</div>
			
			<div class="gameResultBorder">
				<div class="result">
					<p style="color:red">MLB</p>
					<ul>
						<li>마이애미 말린스 3 : 2 워싱턴 내셔널스</li>
						<li>LA다저스 5 : 9 뉴욕메츠</li>
						<li>콜로라도 로키 4 : 5신시내티 레즈</li>
						<li>애리조 다이아몬드백스 10 : 7 샌프란시스코 자이언츠</li>
						<li>애틀랜타 브레이브스 2 : 4 피츠버그 파이어리츠</li>
						<li>세인트루이스 카디널스 8 : 1 샌프란시스코 자이언츠</li>
						<li>콜로라도 로키스 6 : 7 마이애미 말린스</li>
						<li>밀워키 브루어스 3 : 2 워싱턴 내셔널스</li> 
					</ul>
					<p style="color:red">KBO</p>
					<ul>
						<li>롯데 5 : 4 삼성</li>
						<li>기아 7 : 2 키움</li>
						<li>NC 8 : 9 KT</li>
						<li>LG 4 : 6 두산</li>
						<li>SSG 8 : 9 KIA</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>