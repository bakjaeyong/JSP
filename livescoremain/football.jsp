<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : 축구 경기결과, 경기일정 상세 페이지.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Football</title>
</head>
<body>
	<div id="header">
		<h1>Live Score</h1>
		<ul id="navigation">
			<li>
				<a href="index.jsp">home</a>
			</li>
			<li class="selected">
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
			<li>
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
	<div id="body">
		<h1><span>football</span></h1>
		<div>
			<!-- <img src="images/photographer.jpg" alt=""> -->
			<div class="article">
				<h3>Example Title here</h3>
				<p>Example description here Example description here Example description here</p>
			</div>
			
			<div class="gameResultBorder">
				<div class="result">
					<p style="color:red">EPL</p>
					<ul>
						<li>맨시티 3 : 2토트넘</li>
						<li>에버튼 2 : 0뉴캐슬</li>
						<li>리버풀 4 : 1왓포든</li>
						<li>첼시 2 : 0리즈</li>
						<li>리즈 1 : 3번리</li>
						<li>울버햄튼 1 : 1브라이튼</li>
						<li>아스톤빌라 2 : 1브렌트포드</li>
						<li>사우샘프턴 2 : 0아스톤빌라</li>
						<li>첼시 2 : 3번리</li>
						<li>토트넘 2 : 0레스터</li>						
					
					</ul>
					<p style="color:red">K리그</p>
					<ul>
						<li>대구FC 1 : 0수원FC</li>
						<li>인천유나이티드 4 : 0제주유나이티드</li>
						<li>포항스틸러스 3 : 2삼성블루윙즈</li>
						<li>김천상무FC 0 : 1 대구FC</li>
						<li>전북현대모터스 2 : 1 제주유나이티드</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>