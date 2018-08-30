<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/ico"  href="../resources/image/main_images/Favicon.ico"/>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/qna_board.css" type="text/css"> 
	<title>고객문의 | 스프링에어</title>
	
	
</head>
<body>






<!-- 자주묻는질문 -->
<div id="faq" class="tabcontent">  

<br>
<h3><b>자주묻는질문</b></h3><br>



<ul class="buttonCategory_ul">
<li class="buttonCategory on" cata-category="">
<button class="faq_button"><a href="#" title="현재 선택 됨">전체</a>
</button></li>

 <li class="buttonCategory" data-category="1">
<button class="faq_button"><a href="#">개인정보</a>
</button></li>

 <li class="buttonCategory" data-category="2">
<button class="faq_button"><a href="#">예약관련</a>
</button>

 <li class="buttonCategory" data-category="3">
<button class="faq_button"><a href="#">스탬프</a>
</button>

 <li class="buttonCategory" data-category="4">
<button class="faq_button"><a href="#">서비스</a>
</button>
</ul>




<br><br>

<li data-category="1">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;비회원 로그인 및 예약조회는 어떻게 하나요?</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;현재 spring air에서는 비회원 로그인 및 예약조회는 불가능 합니다.
  <br><p class="answer">
  회원 가입 후에 서비스 이용가능합니다.</p></p>
</div>
</li>



<li data-category="1">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;회원탈퇴는 어떻게 하나요?</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;다음과 같은 절차로 회원탈퇴를 하실 수 있습니다.<br><br>

<홈페이지> <br><br>
&nbsp;
1) 홈페이지 우측상단의MY PAGE를 클릭하시고, "회원정보"버튼을 클릭합니다.<br>
&nbsp;
2) 우측 하단의 "개인정보 변경하기"버튼을 클릭한 후 비밀번호를 입력합니다.<br>
&nbsp;
3) 좌측 하단의 "회원탈퇴"버튼을 클릭합니다. <br>

&nbsp;
<모바일><br><br>
&nbsp;
1) 모바일 우측상단의 "MY" 버튼을 클릭하시고, "회원정보 수정"탭을 클릭합니다.<br>
&nbsp;
2) 비밀번호를 입력한 다음 하단의 '회원탈퇴'버튼을 클릭합니다.<br> 
  <br>&nbsp; 
  회원 가입 후에 서비스 이용가능합니다.<br>
  </p></div>
</li>



<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;유아의 요금은 어떻게 되나요?</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;국제선의 경우 유아의 항공 운임은 통상 성인 공시 운임의 약 10%를 지불하셔야 합니다.<br>
<p class="answer">
국내선은 만 24개월 이하 유아의 운임은 없으며, 국내/국제 모두 좌석을 점유하지 않고,<br>
성인 보호자가 유아를 안고 탑승하셔야 합니다.   
  </p></p>
</div>
</li>



<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;
국제선 전자항공권 여정안내서는 어디에서 출력이 가능한가요？
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;홈페이지에서 로그인 하신 후, [항공권 예약조회/변경/취소] 페이지에서 출력을 원하시는 여정을 선택하여 들<br>
  <p class="answer">
  어가셔서 여정안내서를 출력하실 수 있습니다.<br><br>
※전자항공권 여정안내서는 출입국 심사 시 확인 요청을 받으실 수 있기에 반드시 여행기간 동안 지참을 해주셔야 하며<br>
(국제선), 출력이 어려우실 경우에는 출발지 공항 수속 시 직원에게 말씀하시면 출력을 도와드리니 이점 참고 바랍니다.<br>  
  </p></p>
</div></li>





<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;국내선 항공권을 인터넷으로 예약만 하고 차후에 구매할 수는 없나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
&nbsp;인터넷을 통한 예약은 예약과 동시에 항공권 구매를 하도록 하고 있습니다.<br>
<p class="answer">인터넷 동시발권은 국내선의 예약 부도율을 낮출 뿐만 아니라 실제 이용하는 고객이 좌석을<br> 
이용할 수 있도록 하기 위함입니다.<br><br>
인터넷 예약은 특별기간 다양한 인터넷 할인을 제공하며, 24시간 운영하고 있습니다.
  
  </p></p>
</div></li>






<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;국내선 항공권을 인터넷으로 구매했는데 항공권은 어떻게 받는건가요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;국내선 항공권은 항공권 실물이 없는 E-TICKET(Electronic Ticket)이므로,<br> 
  <p class="answer">별도의 항공권 발급 절차가 필요하지 않습니다.출발 당일 항공기 출발 20분전까지,<br> 
  신분증을 소지하시고 공항 카운터에서 탑승권을 발급받으시면 됩니다.<br> 
  
  </p></p>
</div></li>





<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;해외출발 항공권을 신용카드로 결제 후 환불했습니다. 환불은 언제쯤 되나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;해외출발 항공권에 대한 신용카드 결제건을 환불할 경우 대략 15일~한달까지의 기간이 소요될 수 있습니다.<br>
  <p class="answer">
이는, 국내에서 취소 후 해외 은행으로 취소 내역을 발송하고, 현지 카드사에서 확인 후 다시 취소처리가 진행되어<br>
국내 신용카드의 환불처리 기간보다 다소 시일이 소요될 수 있습니다.
  
  </p></p>
</div></li>



<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;신용카드로 결제하고 환불했습니다. 환불은 언제쯤 되나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;당일취소가 아닌 경우 일반적으로 신용카드 취소 건의 경우 취소 후 익일 카드사로 전달되며, 전달 이후 약 2-3일의 처리 <br>
  <p class="answer">
  기간이 소요됩니다. (은행영업일 기준)<br><br>


정확한 입금일은 상기 기간 이후 해당 카드사로 문의해주시기 바랍니다.<br>
  
  </p></p>
</div></li>



<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;국제선 환불 규정은 어떻게 되나요
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;국제선 항공권은 종류별로 환불 규정이 다릅니다.<br>

<p class="answer">예약전 - 예약 단계에서 운임 상세보기를 통해 확인 가능합니다.<br>

예약후 - 로그인 후 예약조회 탭에서 본인이 구매한 항공권의 운임규정을 확인할 수 있습니다.


  
  </p></p>
</div></li>



<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;개인 사정으로 인해 결제해 놓은 국내선 항공편을 이용하지 못하였습니다. 어떻게 하나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;국내선 항공권 결제 후 탑승하지 못한 경우, 취소시점에 따라 수수료 부과후 환불 가능합니다. <br><br>
<p class="answer">국내선 취소시점에 따른 환불 수수료 및 예약취소 위약금 안내<br>
(1인, 편도 기준)<br>
일반 항공권<br><br>
-환불 수수료<br>
구매 다음날~출발 1일 전: 2,000원<br>
출발 당일~출발 20분 전: 3,000원<br>
-예약취소 위약금<br>
출발 20분 전 이후: 8,000원<br>
단체 항공권<br>
-환불 수수료<br>
구매 다음날~출발 3일 전: 2,000원<br>
출발 2일 전~출발 20분 전: 5,000원<br>
-예약취소 위약금<br>
출발 20분 전 이후: 10,000원<br>
항공운임의 80%이상 할인 또는 실속항공권<br>
-환불 수수료<br>
순수 항공운임의 100%<br>
-예약취소 위약금<br>
순수 항공운임의 100%<br>
※항공운임의 80%이상 할인 또는 실속항공권을 구매하신 경우<br><br>
구매당일 23시 49분 전까지 환불시 구매금액의 100% 환불 가능<br>
구매일자와 출발일자가 동일한 경우 출발시간 20분 전 이후 요청되는 환불은 항공운임의 100%를 수수료로 적용
</p></p></div></li>



<li data-category="3">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;FLY,STAMP는 뭔가요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;홈페이지 및 모바일을 통해 항공권 구매 후 탑승을 하시면 노선에 따라 스탬프를 받을 수 있습니다. 
  <p class="answer">
  또한, 일정 수를 모으시면 국내/국제선 스탬프항공권 이용이 가능합니다.<br>
또한 탑승뿐 아니라 구매나 양도, 별도 이벤트 스탬프(MINI STAMP) 수집을 통해 추가 적립도 가능합니다. <br>
(유아/소아는 스탬프적립 제외)<br>
  </p></p>
</div></li>






<li data-category="2">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;FLY,STAMP가 기존 마일리지 프로그램과 차별화된 혜택은 무엇이 있나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;우선 성수기와 평수기 모두 일년 내내 스탬프항공권 이용이 가능합니다.
  <p class="answer">
  또한 탑승을 통한 스탬프 적립뿐 아니라 스탬프 구매 및 양도를 통해서도 스탬프를 추가적립할 수 있습니다.<br>
그리고 국내/국제 연결 항공편을 이용하셔도 각 노선의 스탬프가 모두 지급되며, 홈페이지 및 모바일을 통해서 언제든지<br> 쉽고 편리하게 스탬프 적립 및 사용, 조회가 가능합니다.<br>
  </p></p>
</div></li>







<li data-category="4">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;자전거를 위탁 수하물로 운송이 가능한가요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;수하물로 운송을 하기 위해서는 핸들을 고정하고 페달을 제거한 후, 적절히 포장하여야 합니다.
  
  <p class="answer">
  또한,무료수하물 허용량을 초과하는 경우에는 초과 수하물 요금을 지불하셔야 합니다.<br>
수속시 면책 확인서에 동의 해주셔야 위탁 운송 가능합니다.<br>
또한 고가의 자전거의 경우 저희 직원의 별도 안내를 받아주시기 바랍니다.<br>
  </p></p>
</div></li>







<li data-category="4">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;항공기가 결항되었을 때 항공사에서는 어떠한 조치를 하나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;결항의 사유 및 상황에 따라 조치 내역이 다릅니다.<br>
<p class="answer">천재지변 기상, 공항사정 등의 불가항력적인 사태로 인하여 결항되었을 경우 문자서비스와 전화로안내하고 있습니다. <br> 
고객님의 불편을 최소화 하도록 노력하겠습니다. 감사합니다.<br> 
  
  </p></p>
</div></li>







<li data-category="4">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;공항에는 얼마나 일찍 가야 하나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;항공편 탑승수속 마감 시간은 아래와 같습니다. 
  <p class="answer">
  - 국제선 항공편 이용시 : 출발 40분 전까지<br>
- 국내선 항공편 이용시 : 출발 20분 전까지 <br>
탑승수속 마감 전까지 수속을 완료하지 않으실 경우 탑승이 불가합니다.<br>
탑승 마감시간 전까지 미리 준비하셔서 공항에 도착하시면 여유있게 여행을 즐기실 수 있습니다. <br><br>
※ 단, 국내선 인터넷 탑승권(홈 탑승권) 이용 고객 분들께서는 항공편 출발 20분 전까지 보안 검색대를 <br>
통과하셔야 이용이 가능하시며 그렇지 못할 경우, 탑승이 거절될 수 있습니다.<br>
  </p></p>
</div></li>






<li data-category="4">
<button class="collapsible">
<span class="faq_span">Q</span>
&nbsp;항공기 내에서 음성통화도 가능하나요?
</button>
<div class="content">
  <p><span class="faq_span">A</span>
  &nbsp;운항 중 음성통화의 규제는 여전히 항공기 내에서 통제를 하고 있습니다.
  <p class="answer">  
  1) 승객의 탑승과 하기를 위해 항공기 출입문이 열려져 있는 경우. <br>
2) 착륙 후 승무원의 사용 안내방송 시점.<br>
이 두 가지 경우에는 데이터 송수신(카톡, 문자, 인터넷 사용 등) 및 휴대전화(2G포함)의 음성통화가 가능하오니 <br>캐빈승무원의 안내에 따라주시기 바랍니다.<br>
  </p></p>
</div></li>











<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>




</div>
<!-- //자주묻는질문 -->







</body>
</html>