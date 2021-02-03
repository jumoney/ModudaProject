<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 맵</title>
<!-- CSS파일  -->
<link rel="stylesheet" type="text/css" href="/css/kakaoMap/kakaoMap.css">
</head>
<body>

	<!-- 로그아웃, 프로필 관리 버튼 -->
	<a href="logout.do"><button class="logOut_btn">로그아웃</button></a>
	<button class="profile_btn">프로필 관리</button>

	<!-- 지도가 표시되 켄버스 -->
	<div id="map" style="width: 100%; height: 100%;"></div>

	<!-- 카카오 지도 API -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b0555bdcf91916087134d59c74cb16f7"></script>
	<script type="text/javascript" src="/js/kakaoMap/kakaoMap.js"></script>

</body>
</html>
