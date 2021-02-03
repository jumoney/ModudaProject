/**
 * 
 */

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
		var content = '<div class ="label"><img class="profileImg" src="/images/userProfile/testImg.jpg"></img><div>닉네임란</div></div>';



		//커스텀 오버레이를 생성합니다
		var customOverlay = new kakao.maps.CustomOverlay({
			position: locPosition,	//커스텀 오버레이가 표시될 좌표
			content: content
		});

		//커스텀 오버레이에 표시할 내용입니다     
		//HTML 문자열 또는 Dom Element 입니다 
		var content2 = '<div class="overlaybox"></div>';

		// 커스텀 오버레이를 생성합니다(프로필 정보)
		var customOverlay2 = new kakao.maps.CustomOverlay({
			position: locPosition,
			content: content2,
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
	var content2 = '<div class="overlaybox"></div>';

	// 커스텀 오버레이를 생성합니다(프로필 정보)
	var customOverlay2 = new kakao.maps.CustomOverlay({
		position: locPosition,
		content: content2,

	});

	//커스텀 오버레이를 지도에 표시합니다
	customOverlay.setMap(map);

	customOverlay2.setMap(map);
}