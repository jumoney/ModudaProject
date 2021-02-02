<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 맵</title>
  <style>
  .label{
  	text-align: center;
  	margin: 0px;
  	padding:0px;
  }
  .label div{
  	background: aqua;
  	color: black;
  	margin: 0px;
  	padding: 5px 10px;
  	border-radius: 5%;
  }
.profileImg {
	margin: 0px;
	padding: 0px;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	border: 3px solid aqua;
}
.profileImg:hover {
	border-radius: 0%;
}

.overlaybox {position:relative;width:100px;height:20px;background:url("/image/userProfile/ment.png") no-repeat; background-size: contain; padding: 27px 0px; padding-bottom: 60px;}
 

</style>
</head>
<body>
<div id="map" style="width:1000px;height:800px;"></div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b0555bdcf91916087134d59c74cb16f7"></script>
<script type="text/javascript">

var imageSrc = '/image/userProfile/testImg.jpg'; // 마커이미지의 주소입니다    

//지도 생성
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
      center: new kakao.maps.LatLng(33.450701, 126.570667),
      level: 3 // 지도의 확대 레벨
  }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon) // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

        // 지도 중심좌표를 접속위치로 변경합니다
        map.setCenter(locPosition);   
            
      //커스텀 오버레이에 표시할 내용입니다     
      //HTML 문자열 또는 Dom Element 입니다 
      var content = '<div class ="label"><img class="profileImg" src="/image/userProfile/testImg.jpg"></img><div>닉네임란</div></div>';

      
  
      //커스텀 오버레이를 생성합니다
      var customOverlay = new kakao.maps.CustomOverlay({
        position: locPosition,	//커스텀 오버레이가 표시될 좌표
        content: content   
      });
      
    //커스텀 오버레이에 표시할 내용입니다     
    //HTML 문자열 또는 Dom Element 입니다 
    var content = '<div class="overlaybox"></div>';

    // 커스텀 오버레이를 생성합니다(프로필 정보)
    var customOverlay2 = new kakao.maps.CustomOverlay({
        position: locPosition,
        content: content,
        xAnchor: 0.3,
        yAnchor: 0.91
    });


      //커스텀 오버레이를 지도에 표시합니다
      customOverlay.setMap(map);
      
      customOverlay2.setMap(map);
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
   var locPosition = new kakao.maps.LatLng(33.450701, 126.570667)
   // 지도 중심좌표를 접속위치로 변경합니다
   map.setCenter(locPosition);   
   
 //커스텀 오버레이에 표시할 내용입니다     
 //HTML 문자열 또는 Dom Element 입니다 
 var content = '<div class ="label"><div>닉네임란</div><br><img class="profileImg" src="/image/userProfile/testImg.jpg"></img></div>';

 //커스텀 오버레이를 생성합니다(사용자 사진, 닉네임)
 var customOverlay = new kakao.maps.CustomOverlay({
   position: locPosition,	//커스텀 오버레이가 표시될 좌표
   content: content   
 });
 
//커스텀 오버레이에 표시할 내용입니다     
//HTML 문자열 또는 Dom Element 입니다 
var content = '<div class="overlaybox">' +
  '    <div class="boxtitle">금주 영화순위</div>' +
  '    <div class="first">' +
  '        <div class="triangle text">1</div>' +
  '        <div class="movietitle text">드래곤 길들이기2</div>' +
  '    </div>' +
  '    <ul>' +
  '        <li class="up">' +
  '            <span class="number">2</span>' +
  '            <span class="title">명량</span>' +
  '            <span class="arrow up"></span>' +
  '            <span class="count">2</span>' +
  '        </li>' +
  '        <li>' +
  '            <span class="number">3</span>' +
  '            <span class="title">해적(바다로 간 산적)</span>' +
  '            <span class="arrow up"></span>' +
  '            <span class="count">6</span>' +
  '        </li>' +
  '        <li>' +
  '            <span class="number">4</span>' +
  '            <span class="title">해무</span>' +
  '            <span class="arrow up"></span>' +
  '            <span class="count">3</span>' +
  '        </li>' +
  '        <li>' +
  '            <span class="number">5</span>' +
  '            <span class="title">안녕, 헤이즐</span>' +
  '            <span class="arrow down"></span>' +
  '            <span class="count">1</span>' +
  '        </li>' +
  '    </ul>' +
  '</div>';

// 커스텀 오버레이를 생성합니다(프로필 정보)
var customOverlay2 = new kakao.maps.CustomOverlay({
    position: locPosition,
    content: content,
   
});

 //커스텀 오버레이를 지도에 표시합니다
 customOverlay.setMap(map);
 
 customOverlay2.setMap(map);
}







 

</script>
</body>
</html>
