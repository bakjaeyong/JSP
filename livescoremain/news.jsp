<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : 뉴스 페이지
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>News</title>
</head>
<body>
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
			<li class="selected">
				<a href="news.jsp">news</a>
			</li>
			<li>
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
		<div id="body">
		<h1><span>news</span></h1>
		<div>
			<ul>
				<li>
					<a href="news/single_post_1.jsp" class="figure">
						<img src="img/1-1.jpg" class="image-thumbnail" alt="">
					</a>
					<div>
						<h3>(EPL) 손흥민 EPL 누적 파워랭킹 1위 등극</h3>
						<p>입력 : 2022-05-10 11:01</p>
						<p>
							잉글랜드 프로축구 프리미어리그(EPL) 토트넘 홋스퍼의 손흥민이 EPL 올 시즌 누적 파워랭킹 1위에 올랐다.
						</p>
						<a href="news/single_post_1.jsp" class="more">read this</a>
					</div>
				</li>
				<li>
					<a href="#" class="figure">
						<img src="img/2-1.jpeg" class="image-thumbnail" alt="">
					</a>
					<div>
						<h3>(해외축구) 챔피언스리그, 2024-25시즌부터 32개→36개팀 확대</h3>
						<p>입력 2022.05.11 22:38</p>
						<p>
							세계 최고의 무대 UEFA 챔피언스리그가 2024-25시즌부터 총 36개팀이 참가하는 방식으로 개편된다.
						</p>
						<a href="#" class="more">read this</a>
					</div>
				</li>
				<li>
					<a href="#" class="figure">
						<img src="img/3-2.jpeg" class="image-thumbnail" alt="">
					</a>
					<div>
						<h3>(KBO) ‘33G 만에 하차’ 이동욱, 우승 감독 초라한 퇴장</h3>
						<p>입력 2022.05.12 00:09</p>
						<p>
							2020시즌 통합 우승 이끌고도 팀 성적 부진 등으로 계약 해지올 시즌 최하위 머무는 가운데 코치 음주 폭행 파문으로 결정타
						</p>
						<a href="#" class="more">read this</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	<br><br><br><br><br>
</body>
</html>