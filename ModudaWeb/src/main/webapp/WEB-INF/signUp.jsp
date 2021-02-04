<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/signUp.css">
</head>
<body>
	<div class="text_box">
		<center>
		<!-- 회원 가입 정보 폼 -->
			<form action="insertUser.do" method="post">
				<table width="940" style="padding: 5px 0 5px 0;">
					<h1>회원가입</h1>
					<tr height="2" bgcolor="#01A9DB">
						<td colspan="2"></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="id"
							style="text-align: left;"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="password"> 영문/숫자포함 6자 이상</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type='text' name="email">
					</tr>
					<tr>
					</tr>
				</table>
				<button type="submit">회원가입</button>
			</form>
			
			<br> <a href="login.do"><button>로그인 화면으로 돌아가기</button></a>
			
			<!-- 배경 비디오 설정 -->
			<video muted autoplay loop class="video_box">
				<source src="videos/signUp/signUp.mp4" type="video/mp4">
				<strong>Your browser does not support the video tag.</strong>
			</video>
		</center>
	</div>
</body>
</html>