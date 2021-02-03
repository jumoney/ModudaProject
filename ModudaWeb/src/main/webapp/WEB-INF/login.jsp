<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="/css/login.css">
</head>
<body>
	<div class="box">
		<div class="text_box">
			<center>
				<!-- 타이틀 텍스트 -->
				<h1 style="color: #01A9DB;">MODUDA</h1>
				<h3 style="color: #01A9DB;">내 주변 친구들과 대화하기</h3>

				<!-- 사용자 정보 입력 폼 -->
				<form action="login.do" method="post">
					<input type="text" name="id" value="${user.id }" placeholder="아이디" />
					<br> <input type="password" name="password"
						value="${user.password }" placeholder="비밀번호" /> <br>
					<button type="submit" style="margin: 20px;">로그인</button>
				</form>

				<br> <a href="signUp.do"><button>회원가입</button></a>

			</center>
		</div>

		<!-- 배경 비디오 설정 -->
		<video muted autoplay loop class="video_box">
			<source src="videos/login/BlurredCrowdofPeopleWalking.mp4"
				type="video/mp4">
			<strong>Your browser does not support the video tag.</strong>
		</video>
	</div>
</body>
</html>