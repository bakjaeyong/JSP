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
<body>
	<div id="header">
		<h1>Live Score</h1>
		<ul id="navigation">
			<li class="selected">
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
			<li>
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
	<div id="body">
		<ul>
			<li>
				<div class="mainNews">
					<a href="#">
						<img src="img/4-2.jpeg" class="image-thumbnail" alt="">
						<span>(NBA) ‘버틀러 23P’ 마이애미, 필라델피아 꺾고 시리즈 3-2 만들다</span>
						
					</a>
				</div>
			</li>
			<li>
				<div class="mainNews">
					<a href="#">
						<img src="img/1-1.jpg" class="image-thumbnail" alt="">
						<span>(EPL) 손흥민 EPL 누적 파워랭킹 1위 등극</span>
					</a>
				</div>
			</li>
			<li>
				<div class="mainNews">
					<a href="#">
						<img src="img/5-1.jpeg" class="image-thumbnail" alt="">
						<span>(K리그) K리그 적응 마친 이승우, 3년 만에 대표팀 복귀 현실로</span>
					</a>
				</div>
			</li>
		</ul>
	</div>
	<div class="mainPage">
		<div class="gameResult">
		<p>경기 일정</p>
		<div class="don1">
		<p style="color:white">03:30</p>
			<ul class="listStyleNone">
				<li>맨시티:맨유</li>
			</ul>
		<div class="don2">
			<p style="color:white">21:30</p>
			<ul class="listStyleNone">
				<li>토트넘:아스날</li>
				</ul>
		<div class="don3">
		<p style="color:white">01:30</p>
			<ul class="listStyleNone">
				<li>뉴캐슬:에버튼</li>
			</ul>
		<div class="don4">
		<p style="color:white">04:00</p>
			<ul class="listStyleNone">
				<li>번리:리즈</li>
			</ul>
		<div class="don5">
		<p style="color:white">20:30</p>
			<ul class="listStyleNone">
				<li>첼시:리버풀</li>
			</ul>
		</div>
		</div>
		</div>
		</div>
			<div>
				<ul class="listStyleNone">
				
				</ul>
			</div>
		</div>
	</div>
	
	<br><br><br><br><br>
</body>
</html>