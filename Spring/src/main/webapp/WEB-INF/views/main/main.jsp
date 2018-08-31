<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="/resources/demos/style.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="icon" type="image/ico"
	href="resources/image/main_images/Favicon.ico" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>스프링 에어</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css"
	type="text/css">



</head>

<style>
body {
	background-image: url('resources/image/main_images/main_header.png'),
		url('resources/image/main_images/main_footer.png');
	background-repeat: repeat-x;
	background-position: left top, left bottom;
}

/*배너*/
.banner_ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.banner_ul>li {
	border: 1px solid #ddd;
	margin-top: -1px;
	background-image: url('resources/image/main_images/main_banner.png');
	background-repeat: no-repeat;
	padding: 57px;
	text-decoration: none;
	font-size: 18px;
	color: black;
	display: block;
	position: relative;
}

.close {
	cursor: pointer;
	position: absolute;
	top: 18%;
	right: 1%;
	padding: 12px 16px;
	transform: translate(0%, -50%);
}
</style>

<title>Insert title here</title>

</head>

<body>









	<div id="wrapper">

		<!-- header -->

		<div class="header">



			<%
				Object id = session.getAttribute("login");
			%>

			<%
				if (id == null) {
			%>



			<a href="/join.do">회원가입</a>&nbsp;&nbsp; <a href="/login.do">로그인</a>&nbsp;&nbsp;

			<%
				} else {
			%>

			<a href="/logout.do">로그아웃</a>&nbsp;&nbsp;

			<%
				}
			%>

			<a href="/qna_board.do">고객센터</a>&nbsp;&nbsp;



		</div>









		<!-- nav -->

		<div class="nav">





			<div class="navbar">

				<div class="navbar_home">

					<a href="/main.do"><img
						src="resources/image/main_images/logo.PNG" height="70px"
						width="212px"></a>

				</div>



				<div class="dropdown">

					<button class="dropbtn">

						<br> <b>항공권 예매</b>

					</button>

					<div class="dropdown-content">

						<div class="menu_header">



							<div id="table">

								<div class="row">

									<span class="cell col1"><a href="list">항공권 예매</a></span> 
										class="cell col2"><a href="resInfo">예매내역 확인</a></span> 
										class="cell col3"><a href="/qna_board.do">고객 센터</a></span>

								</div>



								<div class="row">

									<span class="cell col1"><a href="schedule">스케줄 조회</a></span> 

										class="cell col2"><a href="#">회원정보 수정</a></span>


										class="cell col2"><a href="updatejoin.do">회원정보 수정</a></span> 






								</div>

							</div>

						</div>

					</div>

				</div>



				<div class="dropdown">

					<button class="dropbtn">

						<br> <b>마이 페이지</b>

					</button>

					<div class="dropdown-content">

						<div class="menu_header">



							<div id="table">

								<div class="row">

									<span class="cell col1"><a href="list">항공권 예매</a></span> <span
										class="cell col2"><a href="resInfo">예매내역 확인</a></span> <span
										class="cell col3"><a href="/qna_board.do">고객 센터</a></span>

								</div>



								<div class="row">

									<span class="cell col1"><a href="schedule">스케줄 조회</a></span> 

										<span class="cell col2"><a href="updatejoin.do">회원정보 수정</a></span> <span></span>




								</div>

							</div>

						</div>

					</div>

				</div>







				<div class="dropdown">

					<button class="dropbtn">

						<br> <b>기타 페이지</b>

					</button>

					<div class="dropdown-content">

						<div class="menu_header">



							<div id="table">

								<div class="row">

									<span class="cell col1"><a href="list">항공권 예매</a></span> <span
										class="cell col2"><a href="resInfo">예매내역 확인</a></span> <span
										class="cell col3"><a href="/qna_board.do">고객 센터</a></span>

								</div>



								<div class="row">

									<span class="cell col1"><a href="schedule">스케줄 조회</a></span>


								    <span class="cell col2"><a href="updatejoin.do">회원정보 수정</a></span>


								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>





	<!-- content -->

	<div class="content">

		<!-- 예매창  -->

		<div id="menubar">

			<!-- content 1 -->

			<div class="con1">

				<br> <br>

				<!-- 여정선택 -->

				<form action="">

					<input type="radio" class="w3-radio" name="way" value="roundtrip"
						checked>&nbsp;왕복<input type="radio" class="w3-radio"
						name="way" id="oneway" value="남">&nbsp;편도&nbsp;&nbsp;&nbsp;
					<br> <br>

				</form>





				<!-- 미정 -->

				<!-- 구간선택 -->



				<div class="style">

					<div class="con1_margin">

						<form name=form>

							출발지<select name="departures" id="departures" class="departures"
								onchange="change(this.value);">



								<option value="1">부산</option>

								<option value="2">서울(김포)</option>

								<option value="3">제주</option>



							</select>
					</div>



					<div class="con1_margin">

						도착지 <select name="destination" id="destination"
							class="destination">

							<option value="">서울(김포)</option>

							<option value="">제주</option>

						</select>



						</form>

					</div>



					<!-- 날짜선택 -->

					<br> 가는날<br> <input type="text" id="from1" name="from1">

					<br> 오는날<br> <input type="text" id="to1" name="to1">

					<br>
					<br>





					<!-- 연령선택 -->

					성인&nbsp; <input type="number" id="adult" value="1"
						onchange="pay();" min="1" max="2"> 소아&nbsp; <input
						type="number" id="child" value="0" onchange="pay();" min="1"
						max="2"> <br> <br>



					<!-- 확인 -->

					<button class="button">

						<a href="#">항공권 검색</a>

					</button>

				</div>

			</div>

		</div>

	</div>

	<!-- 미정 -->















	<!-- content 2 시작 -->

	<%@include file="section.jsp"%>

	<!-- content 2 끝 -->











	<br>

	<br>

	<br>

	<!-- 배너 -->

	<ul class="banner_ul">

		<li><span class="close">&times;</span></li>

	</ul>



	<script>
		var closebtns = document.getElementsByClassName("close");

		var i;

		for (i = 0; i < closebtns.length; i++) {

			closebtns[i].addEventListener("click", function() {

				this.parentElement.style.display = 'none';

			});

		}
	</script>

	<!-- 배너 끝 -->







	<!-- 공지사항 -->

	<div class="notice">

		<h3>공지사항</h3>

		<table class="con3_table">

			<tr>

				<td class="hr_table">&nbsp;</td>

			</tr>

		</table>

		<a
			onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';"
			href="javascript:void(0)"> 공지사항&nbsp;<img
			src="resources/image/main_images/arrow-down.png" width=10px;>

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 새로운 공지가 추가되었습니다

		</a>

		<div style="DISPLAY: none">

			<table>



				<tr>

					<td></td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

						<a href="#">마닐라(MNL)공항 폐쇄 관련 안내&nbsp;<img
							src="resources/image/main_images/new.png"></a>

					</td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

					<td>2018.08.15</td>

				</tr>

				<tr>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

						<a href="#">스프링에어 신입/경력사원 상시채용&nbsp;<img
							src="resources/image/main_images/new.png"></a>

					</td>

					<td>&nbsp;&nbsp;&nbsp;</td>

					<td>2018.08.20</td>

				</tr>

				<tr>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

						<a href="#">신규취항 이벤트 관련 공지&nbsp;<img
							src="resources/image/main_images/new.png"></a>

					</td>

					<td>&nbsp;&nbsp;&nbsp;</td>

					<td>2018.08.20</td>

				</tr>



			</table>

		</div>

	</div>

	<br>

	<br>

	<!-- //공지사항 끝 -->

	<br>







	<!-- content 2 시작 -->

	<div id="menubar2">

		<div class="menubar2">

			<br> <br> <a href="#">국내 여행</a> <br> <br> <a
				href="#">해외 여행</a>



		</div>

	</div>





	<%@include file="content.jsp"%>

	<!-- // content 2 끝 -->



	</div>

	<br>

	<br>













	<!-- content 3 -->

	<div class="con3">

		<h3>이벤트</h3>

		<table class="con3_table">

			<tr>

				<td class="hr_table">&nbsp;</td>

			</tr>

		</table>







		<!-- content 3-1 -->

		<div class="con3_border1">

			<a href="#"> <img
				src="resources/image/main_images/main_event1.PNG" alt="신규취항 이벤트"
				width="268px" height="180px"></a> <br> <br> <span
				class="con3_btn1"><a href="#"><b>특가 이벤트</b></a></span>

			<h6>서울>LA 신규취항 이벤트</h6>

			<span class="con3_font">2018.09.08~2018.10.18</span><br> <br>

			<br>

		</div>





		<!-- content 3-2 -->

		<div class="con3_border2">

			<a href="#"> <img
				src="resources/image/main_images/main_event3.PNG" alt="특별한 혜택"
				width="268px" height="178px"><br> <br> <span
				class="con3_btn2"><b>홍보/안내</b></span>

				<h5>SPRING AIR만의 특별한 혜택!!</h5> <span class="con3_font">"두근두근"

					설레는 여행!</span><br> <br> <br>

			</a>

		</div>





		<!-- content 3-3 -->

		<div class="con3_border2">

			<a href="#"> <img
				src="resources/image/main_images/main_event2.PNG"
				alt="1주년 기념 특가 이벤트" width="268px" height="178px"><br> <br>

				<span class="con3_btn1"><b>특가 이벤트</b></span>

				<h5>1주년 기념 특가 이벤트</h5> <span class="con3_font">2018.09.03~2018.09.23</span><br>

				<br> <br>

			</a>

		</div>





		<!-- content 3-4 -->

		<div class="con3_border2">

			<a href="#"> <img
				src="resources/image/main_images/main_event4.PNG" alt="특별한 혜택"
				width="268px" height="180px"><br> <br> <span
				class="con3_btn2"><b>홍보/안내</b></span>

				<h5>짠내투어 in 홍콩</h5> <span class="con3_font">SPRING X 홍콩덕링크루즈

					EVENT</span><br> <br> <br>

			</a>

		</div>

		<br> <br> <br>













		<!-- content 4 -->

		<div class="con4">

			<br>

			<ul>

				<li><b>고객 서비스&nbsp;</b></li>

				<li><a href="#">|&nbsp;&nbsp;공지사항&nbsp; <span
						class="con4_bar">|</span></a></li>

				<li><a href="#">&nbsp;문의사항&nbsp; <span class="con4_bar">|</span></a></li>

				<li><a href="#">&nbsp;자주 묻는 질문&nbsp; <span class="con4_bar">|</span></a></li>

			</ul>



			<br> <br>



			<!-- 사이트맵 -->

			<div id="sitemap_table">

				<div class="row" id="ccc">

					<span class="cell col11"><b>사이트 맵</b></span> <span
						class="cell col12"></span> <span class="cell col13"></span> <span
						class="cell col14"></span>

				</div>





				<div class="row">

					<span class="cell col11"></span> <span class="cell col12">&nbsp;</span>

					<span class="cell col13"></span> <span class="cell col14"></span>

				</div>







				<div class="row">

					<span class="cell col11"><a href="list">항공권 예매</a></span> <span
						class="cell col12"><a href="resInfo">예매내역
							확인&nbsp;&nbsp;</a></span> <span class="cell col13"><a href="#">공지사항</a></span>
					<span class="cell col14"><a href="/login.do">로그인</a></span>

				</div>









				<div class="row">

					<span class="cell col11"><a href="schedule">스케줄 조회</a></span>

						class="cell col12"><a href="#">회원정보 수정&nbsp;&nbsp;</a></span> 


						class="cell col12"><a href="updatejoin.do">회원정보 수정&nbsp;&nbsp;</a></span> <span


						class="cell col13"><a href="/qna_board.do">고객 센터</a></span> 
						class="cell col14"><a href="/join.do">회원가입</a></span>

				</div>

			</div>

			<br> <br> <br> <br> <br> <br>

		</div>

	</div>



	<div class="footer">

		<div class="footer_font">

			<ul class="footer_ul">

				<br>

				<br>

				<li class="footer_li"><a href="/main.do"><img
						src="resources/image/main_images/logo1.png" width="200"
						height="66"></a></li>

				<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

				<li class="footer_li">대표이사 김새봄 | 사업자등록번호 : 010-1234-05678 |

					통신판매업신고번호 : 2018-서울중구-2018<br> 서울시 중구 봄나들이길 스프링에어 본사 3층 | TEL

					: 1577-1577 개인정보 관리책임자 노책임<br> 예약센터│7135-2105(월,수,금 PM 21:00 ~

					AM 05:00) 담당자 밤새봄 팀장<br> COPYRIGHT ⓒ 2018 SPRING AIR ALL

					RIGHTS RESERVED.<br>
				<li>
				<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

				<li class="footer_li"><a
					href="https://www.0404.go.kr/dev/main.mofa/" target="_blank"><img
						src="resources/image/main_images/foreignLogo.png"></a></li>

				<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

				<li class="footer_li"><img
					src="resources/image/main_images/isms_mark.png"></li>

				<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

				<li class="footer_li"><img
					src="resources/image/main_images/waMark.png"></li>

			</ul>

		</div>

	</div>

























</body>

</html>



<script>
	/* 이중셀렉트박스 */

	function change(departures) {

		var f = document.form;

		if (departures == "") {

			num = new Array("서울(김포)");

			vnum = new Array("");

		} else if (departures == "1") {

			num = new Array("서울(김포)", "제주");

			vnum = new Array("1", "2");

		} else if (departures == "2") {

			num = new Array("부산", "제주");

			vnum = new Array("1", "2");

		} else if (departures == "3") {

			num = new Array("부산", "서울(김포)");

			vnum = new Array("1", "2");

		}

		for (i = 0; i < f.destination.length; i++) {

			f.destination.options[0] = null;

		}

		for (i = 0; i < num.length; i++) {

			f.destination.options[i] = new Option(num[i], vnum[i]);

		}

	}

	/* 달력 */

	$(function() {

		from = $("#from1").datepicker({

			/* defaultDate : "+1w",  */

			minDate : 0,

			numberOfMonths : 2,

			altField : "#alternate",

			altFormat : "yy-mm-dd DD"

		}).on("change", function() {

			to.datepicker("option", "minDate", getDate(this));

			var date = new Date($("#from1").datepicker({

			}).val()), week = new Array('일', '월', '화', '수', '목', '금', '토');

			if (week[date.getDay()] != undefined) {

			}

		}), to = $("#to1").datepicker({

			/* defaultDate : "+1w", */

			minDate : 0,

			numberOfMonths : 2,

			altField : "#alternate2",

			altFormat : "yy-mm-dd DD"

		}).on("change", function() {

			from.datepicker("option", "maxDate", getDate(this));

			var date = new Date($("#to1").datepicker({

			}).val()), week = new Array('일', '월', '화', '수', '목', '금', '토');

			if (week[date.getDay()] != undefined) {

			}

		});

		function getDate(element) {

			var date;

			try {

				date = $.datepicker.parseDate(dateFormat, element.value);

			} catch (error) {

				date = null;

			}

			return date;

		}

	});

	/* 오늘날짜 */

	$(document).ready(

	function() {

		$("#from1").datepicker({});

		var myDate = new Date();

		var month = myDate.getMonth() + 1;

		if (month < 10) {

			month = "0" + month;

		}

		var prettyDate = myDate.getFullYear() + '-' + month + '-'

		+ myDate.getDate();

		$("#from1").val(prettyDate);

	});

	$(document).ready(

	function() {

		$("#to1").datepicker({});

		var myDate = new Date();

		var month = myDate.getMonth() + 1;

		if (month < 10) {

			month = "0" + month;

		}

		var prettyDate = myDate.getFullYear() + '-' + month + '-'

		+ myDate.getDate();

		$("#to1").val(prettyDate);

	});

	/* 달력 한글화 */

	jQuery(function($) {

		$.datepicker.regional['ko'] = {

			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',

			'9월', '10월', '11월', '12월' ],

			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',

			'9월', '10월', '11월', '12월' ],

			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],

			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],

			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],

			weekHeader : 'Wk',

			dateFormat : 'yy-mm-dd',

			firstDay : 0,

			isRTL : false,

			showMonthAfterYear : true,

			yearSuffix : '년'

		};

		$.datepicker.setDefaults($.datepicker.regional['ko']);

	});
</script>