<!-- 원본 -->
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min_pink.css">
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">

<title>Travel Information Service</title>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="myPackage.SelectDB"%>

</head>
<body>
	<script src="//code.jquery.com/jquery.min.js"></script>





	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<div class="container">
				<a class="navbar-brand" href="/DbTest/index_test.jsp">여행 정보 서비스</a>
				<br> <a href="/DbTest/index_test.jsp" class="navbar-brand"
					style="font-size: 15px; padding: 0 10px;">Travel Information
					Service</a>
			</div>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor01"
				aria-controls="navbarColor01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor01"></div>
		</div>
	</nav>
	<!-- form태그는 전체에 -->
	<form action="#">
		<!-- selected -->
		<div class="city-container">
			<div class="city-cont">

				<p class="search">
					<select id=select1 name="jump">
						<optgroup label="서울특별시">
							<option value="서울특별시//동대문구">동대문구</option>
							<option value="서울특별시//서대문구">서대문구</option>
							<option value="서울특별시//용산구">용산구</option>
							<option value="서울특별시//노원구">노원구</option>
							<option value="서울특별시//마포구">마포구</option>
							<option value="서울특별시//서초구">서초구</option>
							<option value="서울특별시//강남구">강남구</option>
							<option value="서울특별시//송파구">송파구</option>
							<option value="서울특별시//종로구">종로구</option>
							<option value="서울특별시//중구">중구</option>
						</optgroup>

						<optgroup label="부산광역시" >
							<option value="부산광역시//해운대구">해운대구</option>
							<option value="부산광역시//영도구">영도구</option>
							<option value="부산광역시//동래구">동래구</option>
							<option value="부산광역시//사하구">사하구</option>
							<option value="부산광역시//금정구">금정구</option>
							<option value="부산광역시//강서구">강서구</option>
							<option value="부산광역시//기장군">기장군</option>
							<option value="부산광역시//서구">서구</option>
							<option value="부산광역시//남구">남구</option>
							<option value="부산광역시//북구">북구</option>
						</optgroup>

						<optgroup label="대구광역시" >
							<option value="대구광역시//수성구">수성구</option>
							<option value="대구광역시//달서구">달서구</option>
							<option value="대구광역시//달성군">달성군</option>
							<option value="대구광역시//동구">동구</option>
							<option value="대구광역시//서구">서구</option>
							<option value="대구광역시//남구">남구</option>
							<option value="대구광역시//북구">북구</option>
							<option value="대구광역시//중구">중구</option>
						</optgroup>

						<optgroup label="인천광역시" >
							<option value="인천광역시//연수구">연수구</option>
							<option value="인천광역시//부평구">부평구</option>
							<option value="인천광역시//계양구">계양구</option>
							<option value="인천광역시//동구">동구</option>
							<option value="인천광역시//서구">서구</option>
							<option value="인천광역시//중구">중구</option>
							<option value="인천광역시//강화군">강화군</option>
							<option value="인천광역시//옹진군">옹진군</option>
						</optgroup>

						<optgroup label="광주광역시">
							<option value="광주광역시//동구">동구</option>
							<option value="광주광역시//서구">서구</option>
							<option value="광주광역시//남구">남구</option>
							<option value="광주광역시//북구">북구</option>
						</optgroup>

						<optgroup label="대전광역시">
							<option value="대전광역시//유성구">유성구</option>
							<option value="대전광역시//대덕구">대덕구</option>
							<option value="대전광역시//동구">동구</option>
							<option value="대전광역시//서구">서구</option>
							<option value="대전광역시//중구">중구</option>
						</optgroup>

						<optgroup label="울산광역시">
							<option value="울산광역시//동구">동구</option>
							<option value="울산광역시//남구">남구</option>
							<option value="울산광역시//북구">북구</option>
							<option value="울산광역시//중구">중구</option>
							<option value="울산광역시//울주군">울주군</option>
						</optgroup>

						<optgroup label="세종특별자치시">
							<option value="세종특별자치시//세종특별자치시">세종시</option>
						</optgroup>

						<optgroup label="경기도">
							<option value="경기도//남양주시">남양주시</option>
							<option value="경기도//동두천시">동두천시</option>
							<option value="경기도//의정부시">의정부시</option>
							<option value="경기도//수원시">수원시</option>
							<option value="경기도//성남시">성남시</option>
							<option value="경기도//안양시">안양시</option>
							<option value="경기도//부천시">부천시</option>
							<option value="경기도//광명시">광명시</option>
							<option value="경기도//안산시">안산시</option>
							<option value="경기도//고양시">고양시</option>
							<option value="경기도//과천시">과천시</option>
							<option value="경기도//구리시">구리시</option>
							<option value="경기도//오산시">오산시</option>
							<option value="경기도//시흥시">시흥시</option>
							<option value="경기도//의왕시">의왕시</option>
							<option value="경기도//용인시">용인시</option>
							<option value="경기도//파주시">파주시</option>
							<option value="경기도//이천시">이천시</option>
							<option value="경기도//안성시">안성시</option>
							<option value="경기도//김포시">김포시</option>
							<option value="경기도//화성시">화성시</option>
							<option value="경기도//광주시">광주시</option>
							<option value="경기도//양주시">양주시</option>
							<option value="경기도//포천시">포천시</option>
							<option value="경기도//여주시">여주시</option>
							<option value="경기도//연천군">연천군</option>
							<option value="경기도//가평군">가평군</option>
							<option value="경기도//양평군">양평군</option>
						</optgroup>

						<optgroup label="강원도">
							<option value="강원도//춘천시">춘천시</option>
							<option value="강원도//원주시">원주시</option>
							<option value="강원도//강릉시">강릉시</option>
							<option value="강원도//동해시">동해시</option>
							<option value="강원도//태백시">태백시</option>
							<option value="강원도//속초시">속초시</option>
							<option value="강원도//삼척시">삼척시</option>
							<option value="강원도//홍천군">홍천군</option>
							<option value="강원도//횡성군">횡성군</option>
							<option value="강원도//영월군">영월군</option>
							<option value="강원도//평창군">평창군</option>
							<option value="강원도//평창군">평창군</option>
							<option value="강원도//정선군">정선군</option>
							<option value="강원도//철원군">철원군</option>
							<option value="강원도//화천군">화천군</option>
							<option value="강원도//양구군">양구군</option>
							<option value="강원도//인제군">인제군</option>
							<option value="강원도//고성군">고성군</option>
							<option value="강원도//양양군">양양군</option>
						</optgroup>

						<optgroup label="충청북도" >
							<option value="충청북도//제천시">제천시</option>
							<option value="충청북도//충주시">충주시</option>
							<option value="충청북도//증평군">증평군</option>
							<option value="충청북도//단양군">단양군</option>
							<option value="충청북도//음성군">음성군</option>
							<option value="충청북도//괴산군">괴산군</option>
							<option value="충청북도//진천군">진천군</option>
							<option value="충청북도//영동군">영동군</option>
							<option value="충청북도//옥천군">옥천군</option>
							<option value="충청북도//보은군">보은군</option>
						</optgroup>

						<optgroup label="충청남도">
							<option value="충청남도//천안시">천안시</option>
							<option value="충청남도//아산시">아산시</option>
							<option value="충청남도//당진시">당진시</option>
							<option value="충청남도//계룡시">계룡시</option>
							<option value="충청남도//논산시">논산시</option>
							<option value="충청남도//서산시">서산시</option>
							<option value="충청남도//보령시">보령시</option>
							<option value="충청남도//공주시">공주시</option>
							<option value="충청남도//서천군">서천군</option>
							<option value="충청남도//청양군">청양군</option>
							<option value="충청남도//홍성군">홍성군</option>
							<option value="충청남도//예산군">예산군</option>
							<option value="충청남도//태안군">태안군</option>
							<option value="충청남도//부여군">부여군</option>
						</optgroup>

						<optgroup label="전라북도" >
							<option value="전라북도//김제시">김제시</option>
							<option value="전라북도//남원시">남원시</option>
							<option value="전라북도//정읍시">정읍시</option>
							<option value="전라북도//익산시">익산시</option>
							<option value="전라북도//군산시">군산시</option>
							<option value="전라북도//전주시">전주시</option>
							<option value="전라북도//부안군">부안군</option>
							<option value="전라북도//고창군">고창군</option>
							<option value="전라북도//순창군">순창군</option>
							<option value="전라북도//임실군">임실군</option>
							<option value="전라북도//장수군">장수군</option>
							<option value="전라북도//무주군">무주군</option>
							<option value="전라북도//진안군">진안군</option>
							<option value="전라북도//완주군">완주군</option>
						</optgroup>

						<optgroup label="전라남도">
							<option value="전라남도//나주시">나주시</option>
							<option value="전라남도//목포시">목포시</option>
							<option value="전라남도//여수시">여수시</option>
							<option value="전라남도//순천시">순천시</option>
							<option value="전라남도//나주시">나주시</option>
							<option value="전라남도//광양시">광양시</option>
							<option value="전라남도//담양군">담양군</option>
							<option value="전라남도//곡성군">곡성군</option>
							<option value="전라남도//구례군">구례군</option>
							<option value="전라남도//고흥군">고흥군</option>
							<option value="전라남도//보성군">보성군</option>
							<option value="전라남도//화순군">화순군</option>
							<option value="전라남도//장흥군">장흥군</option>
							<option value="전라남도//강진군">강진군</option>
							<option value="전라남도//해남군">해남군</option>
							<option value="전라남도//영암군">영암군</option>
							<option value="전라남도//무안군">무안군</option>
							<option value="전라남도//함평군">함평군</option>
							<option value="전라남도//영광군">영광군</option>
							<option value="전라남도//장성군">장성군</option>
							<option value="전라남도//완도군">완도군</option>
							<option value="전라남도//진도군">진도군</option>
							<option value="전라남도//신안군">신안군</option>
						</optgroup>

						<optgroup label="경상북도">
							<option value="경상북도포항시">포항시</option>
							<option value="경상북도경주시">경주시</option>
							<option value="경상북도김천시">김천시</option>
							<option value="경상북도안동시">안동시</option>
							<option value="경상북도구미시">구미시</option>
							<option value="경상북도영주시">영주시</option>
							<option value="경상북도영천시">영천시</option>
							<option value="경상북도상주시">상주시</option>
							<option value="경상북도문경시">문경시</option>
							<option value="경상북도경산시">경산시</option>
							<option value="경상북도군위군">군위군</option>
							<option value="경상북도의성군">의성군</option>
							<option value="경상북도청송군">청송군</option>
							<option value="경상북도영양군">영양군</option>
							<option value="경상북도영덕군">영덕군</option>
							<option value="경상북도청도군">청도군</option>
							<option value="경상북도고령군">고령군</option>
							<option value="경상북도성주군">성주군</option>
							<option value="경상북도칠곡군">칠곡군</option>
							<option value="경상북도예천군">예천군</option>
							<option value="경상북도봉화군">봉화군</option>
							<option value="경상북도울진군">울진군</option>
							<option value="경상북도울릉군">울릉군</option>
						</optgroup>

						<optgroup label="경상남도">
							<option value="경상남도//통합창원시">통합창원시</option>
							<option value="경상남도//진주시">진주시</option>
							<option value="경상남도//통영시">통영시</option>
							<option value="경상남도//사천시">사천시</option>
							<option value="경상남도//김해시">김해시</option>
							<option value="경상남도//밀양시">밀양시</option>
							<option value="경상남도//거제시">거제시</option>
							<option value="경상남도//양산시">양산시</option>
							<option value="경상남도//의령군">의령군</option>
							<option value="경상남도//함안군">함안군</option>
							<option value="경상남도//창녕군">창녕군</option>
							<option value="경상남도//남해군">남해군</option>
							<option value="경상남도//하동군">하동군</option>
							<option value="경상남도//산청군">산청군</option>
							<option value="경상남도//함양군">함양군</option>
							<option value="경상남도//거창군">거창군</option>
							<option value="경상남도//합천군">합천군</option>
						</optgroup>

						<optgroup label="제주특별자치도">
							<option value="제주특별자치도//서귀포시">서귀포시</option>
							<option value="제주특별자치도//제주시">제주시</option>
						</optgroup>

					</select>
			</div>
			<div class="month">

				<p class="search">
					<select id=select2 name="month">
						<option value="1">1월</option>
						<option value="2">2월</option>
						<option value="3">3월</option>
						<option value="4">4월</option>
						<option value="5">5월</option>
						<option value="6">6월</option>
						<option value="7">7월</option>
						<option value="8">8월</option>
						<option value="9">9월</option>
						<option value="10">10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
					</select>
					<!-- <p class="search">
					<input id=input2 type="submit" value="검색"> -->
			</div>
			<div>

<!-- 				<input id=input3 type="text" placeholder="원하는 관광지를 입력하세요."> -->
				<p class="search">
					<input id=input2 type="button" value="검색" onclick="sendMessage()">
			</div>
			
			<!-- 날씨 -->
	<div class="weather">
		<div class="weather-text">
			<div class="CurrIcon fa-9x"></div>
			<div class="text">
				<div class="CurrTemp fa-2x">/</div>
				<div class="City fa-2x"></div>
			</div>
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="https://kit.fontawesome.com/0715bed945.js"></script>

	<!-- 리스트 테이블 조작 스크립트 -->

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							let weatherIcon = {
								'01' : 'fas fa-sun',
								'02' : 'fas fa-cloud-sun',
								'03' : 'fas fa-cloud',
								'04' : 'fas fa-cloud-meatball',
								'09' : 'fas fa-cloud-sun-rain',
								'10' : 'fas fa-cloud-showers-heavy',
								'11' : 'fas fa-poo-storm',
								'13' : 'far fa-snowflake',
								'50' : 'fas fa-smog'
							};

							var name = "Asan";
							var a = "http://api.openweathermap.org/data/2.5/weather?q="
									+ name
									+ "&units=metric&APPID=f941ad12d39d40fc40154d906cb56f0f";

							$
									.ajax({
										url : a,

										dataType : 'json',
										type : 'GET',
										success : function(data) {
											var $Icon = (data.weather[0].icon)
													.substr(0, 2);
											var $Temp = Math
													.floor(data.main.temp)
													+ 'º';
											var $city = data.name;

											$('.CurrIcon')
													.append(
															'<i class="' + weatherIcon[$Icon] +'"></i>');
											$('.CurrTemp').prepend($Temp);
											$('.City').append($city);
										}
									})
						});
	</script>

			
		</div>

	</form>



	<!-- 지도 -->
	<div id="map" style="width: 50%; height: 70%;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=504abcc1bace88c760299b855f384825&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(36.798748, 127.074065), // 지도의 중심좌표
			level : 4
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		function myMarker(number, address) {
			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							//'주소',
							address,
							function(result, status) {
								// 정상적으로 검색이 완료됐으면 
								if (status === daum.maps.services.Status.OK) {

									var coords = new daum.maps.LatLng(
											result[0].y, result[0].x);

									// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
									var content = '<div class="customoverlay">'
											+ '    <span class="title">'
											+ '<div style="font-style:normal; color:red; font-weight:bold; font-size:2.0em">'
											+ number + '</div>' + '</span>'
											+ '</div>';

									// 커스텀 오버레이가 표시될 위치입니다 
									var position = new daum.maps.LatLng(
											result[0].y, result[0].x);

									// 커스텀 오버레이를 생성합니다
									var customOverlay = new daum.maps.CustomOverlay(
											{
												map : map,
												position : position,
												content : content,
												yAnchor : 1
											});

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});
		}

		//for (i = 0; i < myAddress.length; i++) {
		//	myMarker(i + 1, myAddress[i]);
		//}
	</script>


	
	<%

	%>
	<!-- 	<table style="border: 1px solid; border-collapse: collapse;">
		<tr style="border: solid 1px; width: 500px; height: 600px;">
			<td style="border: 1px solid; width: 500px; height: 600px;">
			<textarea id="messageTextArea" disabled></textarea>
			</td>
			<td></td>
		</tr>
	</table>
	-->


<div class="list-cont">
	<table id='table1'>
		<thead>
			<tr>
				<th>도</th>
				<th>시</th>
				<th>이름</th>
				<th>입장객</th>
			</tr>
		</thead>
		<tbody id='tbody1'>

		</tbody>


	</table>
</div>



	<script type="text/javascript">
		// 「WebSocketEx」는 프로젝트 명
		// 「websocket」는 호스트 명
		// WebSocket 오브젝트 생성 (자동으로 접속 시작한다. - onopen 함수 호출)
		var webSocket = new WebSocket("ws://localhost:8080/DbTest/websocket");
		// 콘솔 텍스트 에리어 오브젝트

		//var messageTextArea = document.getElementById("messageTextArea");

		// WebSocket 서버와 접속이 되면 호출되는 함수
		webSocket.onopen = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			//messageTextArea.value += "Server connect...\n";
			console.log("Server connect... ");
		};

		// WebSocket 서버와 접속이 끊기면 호출되는 함수
		webSocket.onclose = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			//messageTextArea.value += "Server Disconnect...\n";
			console.log("Server Disconnect...");

		};
		// WebSocket 서버와 통신 중에 에러가 발생하면 요청되는 함수
		webSocket.onerror = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			//messageTextArea.value += "error...\n";
			console.log("error...");
		};

		// WebSocket 서버로 부터 메시지가 오면 호출되는 함수
		webSocket.onmessage = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			//messageTextArea.value += "Recieve From Server => " + message.data
			//		+ "\n";
			console.log(message);

			var messarr = message.data.split('//');


			$("#table1 > tbody").empty();

			for (var i = 0; i < messarr.length - 1; i++) {

				var data = messarr[i].split(',');

				var row = "";
				row += '<tr>';
				row += '<td>' + data[0] + '</td>';
				row += '<td>' + data[1] + '</td>';
				row += '<td>' + data[2] + '</td>';
				row += '<td>' + data[3] + '명</td>';
				row += '</tr>';

				$("#tbody1").append(row);

			}

			data = [];
			messarr = [];
		
		};

		// Send 버튼을 누르면 호출되는 함수
		function sendMessage() {
			// 송신 메시지를 작성하는 텍스트 박스 오브젝트를 취득한다.

			var sendmessage = document.getElementById("select1").value + "//"
					+ document.getElementById("select2").value;
			console.log(sendmessage);
			// 콘솔 텍스트에 메시지를 출력한다.
			//messageTextArea.value += "Send to Server => " + sendmessage + "\n";
			// WebSocket 서버에 메시지를 송신한다.
			webSocket.send(sendmessage);
			// 송신 메시지를 작성하는 텍스트 박스를 초기화한다.
			sendmessage = "";

		}

		// Disconnect 버튼을 누르면 호출되는 함수
		function disconnect() {
			// WebSocket 접속 해제
			webSocket.close();
		}
	</script>

</body>

<style>
/* .list-cont{
border: 3px solid #f3969a;
margin: 20px 0 0 20px; 
}
 */
 th, td {
    border-bottom: 1px solid #444444;
	padding:10px 0 10px 0;
  }
.list-cont {
	float:left;
	height:450px;
	border: 3px solid #f3969a;
	border-radius: 10px;
	margin: 20px 0 0 20px;
	overflow: auto;
}

.list-cont::-webkit-scrollbar {
	width: 20px;
	height: 20px;
}

.list-cont::-webkit-scrollbar-thumb {
	background-color: #B0B0B0;
	border-radius: 10px;
	background-clip: padding-box;
	border: 2px solid transparent;
}

.list-cont::-webkit-scrollbar-track {
	background-color: #E0E0E0;
	border-radius: 10px;
	box-shadow: inset 0px 0px 3px white;
}

#list-boxs {
	margin-left: 50px;
	width: 534px;
	padding: 15px;
	/* border:2px solid black; */
	box-sizing: border-box;
	display: inline-block;
}



.weather-text {
 	margin: 20px 0 0 50px; 
	/* float: right; */
	display: block;

}

.text {
	display: block;
}

#map {
	margin: 20px 0 0 20px;
	width: 500px;
	height: 400px;
	position: absolute;
	float: left;
	display: block;
}

.navbar-brand {
	font-family: 'Katuri';
	font-size: 40px;
}

.navbar-nav {
	font-size: 20px;
}

.city-container {
	margin: 20px 0 0 20px;
	float: right;
	display: inline-block;
}

div {
	display: inline-block;
}

textarea {
	width: 100%;
	height: 100%;
	resize: none;
}

.search {
	display: inline-block;
}

#select1 {
	/* font-family: 'Katuri'; */
	margin: 0 10px 0 0;
	font-size: 20px;
	height: 35px;
	border-radius: 5px;
}

#select2 {
	/* font-family: 'Katuri'; */
	margin: 0 10px 0 0;
	font-size: 20px;
	height: 35px;
	border-radius: 5px;
}

#input1 {
	font-family: 'Katuri';
	font-size: 20px;
	color: #ffffff;
	background-color: #f3969a;
	border: #ffffff;
	border-radius: 5px;
}

#input2 {
	font-family: 'Katuri';
	font-size: 20px;
	color: #ffffff;
	background-color: #f3969a;
	border: #ffffff;
	border-radius: 5px;
}

#input3 {
	/* 	font-family: 'Katuri'; */
	font-size: 20px;
	border-radius: 5px;
	width: 300px;
	height: 35px;
}

@font-face {
	font-family: 'Katuri';
	src: url('font/Katuri.ttf') format('truetype');
}

.footer-container {
	display: inline;
	margin: 50px 0 0 50px;
}
</style>

</html>