<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="icon" type="image/ico"  href="../resources/image/main_images/Favicon.ico"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>예약 확인 | 스프링에어</title>
<style>

body{
background-image: url('../resources/image/main_images/main_header.png'),url('../resources/image/main_images/main_footer2.png');
background-repeat: repeat-x;
background-position: left top,left bottom;
}


.section_All{
	margin-left: 100px;		
}





table {	
    border-collapse: collapse;
    width: 100%;
    background-color: rgba(216,214,202,0.05);
    border-top: 3px solid #fe5674;  
    color: #252D2E;
}

th, td {
    padding: 10px;
    text-align: left;
    border: 1px solid #D8D6CA; 
    font-size: 14px;
}

.td_style1{
	border: 1px solid rgba(0,0,0,0);  
	background-color: rgba(0,0,0,0); 
}

.th_style {
	border-top: 3px solid #fe5674;  
	background-color: rgba(216,214,202,0.4); 
}

.th_style1 {
	border-top: 3px solid #fe5674;  
	background-color: rgba(216,214,202,0.4); 
}

/*이름 예약날짜 항공편명 출발날짜 등*/
.th_style2 {	
	background-color: rgba(216,214,202,0.2); 
	text-align: center;
}



input[type=text]{
   width: 300px;
    height: 35px;
    padding-left: 5px;
    font-size: 15px;
    color: #485759;
    border: 1px solid #D8D6CA;   
    background-color: rgba(216,214,202,0.01);   
}




/* 예약조회 타이틀 */
.seat_title{
   width: 240px;
   height: 25px;
   font-weight: bold;
   color: #252D2E;
   margin-bottom: -15px;
   margin-left: -12px;
   border: 2px solid rgba(0,0,0,0);      
   background: rgba(0,0,0,0);
}

.seat_title th, .seat_title td {
   border: 2px solid rgba(0,0,0,0);      
  
}


.seat_title img {
   margin-bottom: 10px;
}



input[type=button] {
    width: 200px;
    background-color: #fe5674;
    color: white;
    padding: 20px 10px;    
    border: none;
    border-radius: 4px;
    cursor: pointer;    
}

input[type=button]:hover {
    background-color: #fe123c;
}



.button {
    width: 500px;
    background-color: #fe5674;
    color: white;
    padding: 20px 10px;    
    border: none;
    border-radius: 4px;
    cursor: pointer;    
}

.button:hover {
    background-color: #fe123c;
}



#rInfo{
	border-collapse: collapse;
	border:1px;
}
#rInfo td{
	text-align:center;
	width:120px;
}
#restb{
	border-collapse:collapse;
}
#restb .restb_td1, #restb .restb_td3{
	width:100px;
} 
#restb .restb_td2, #restb .restb_td4{
	width:150px;
} 
#restb .restb_td5{
	text-align:center;
	border: 1px solid rgba(0,0,0,0);  
	background-color: rgba(0,0,0,0); 
}

.restb_td1, .restb_td3{
	background-color: rgba(216,214,202,0.4); 
}

</style>
</head>
<body>
<%@include file="../main/header.jsp" %>
<div class="section_All">
<br><br><br>
<table class="seat_title"><tr>
   <td><img src="../resources/image/main_images/airplain.png" height="25px" width="35px"></td>
   <td><h3><b>예약 조회 | 좌석예약</b></h3></td>
</tr></table>
	
	
	<div>
	<table id="restb" border=1>
		<tr>
			<th class='restb_td1'>이름</th>
			<td class='restb_td2'><input type="text" id="resname" class="resname" size="20px"/></td>
		</tr>
		<tr>
			<th class='restb_td3'>예약번호</th>
			<td class='restb_td4'><input type="text" id="resrnum" class="resrnum" size="20px"/></td>
		</tr>
		<tr>
		<td class="td_style1"></td>
		</tr>
		<tr>
			<td class='restb_td5' colspan=2>
				<input type="button" id="goResInfo" value="조회하기"/>&nbsp;&nbsp;
				<input type="button" id="goMain" value="메인으로"/>
			</td>
		</tr>
	</table>
	</div>
	<br><br>	
	<div><table id="rInfo" border=1></table></div>
	
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
</div>
<%@include file="../main/footer.jsp" %>		
</body>

<script>
$(document).ready(function(){
	
	$("#goResInfo").on("click", function(){
		
		var name=$("#resname").val();
		var res_rnum=$("#resrnum").val();
		
		$.getJSON('/seats/ticketinfo/'+name+'/'+res_rnum, function(data){
			console.log(data.length);
			var str="";
		$(data.list).each(
			function(){
			    	str+=
			    		"<tr>" + "<th class='th_style' colspan=7>" + "예약 정보" + "</th>" + "</tr>" +
					    "<tr>"+ "<th class='th_style2' colspan=3>" + "이름" + "</th>" + 
		    			    	"<th class='th_style2' colspan=4>" + "예약 날짜" + "</th>" + "<tr/>"+
			    		"<tr>"+ "<td colspan=3>" + this.name + "</td>" + 		    				  
			    		        "<td colspan=4>" + this.pay_date + "</td>" +"</tr>" + 		    		         
			    		"<tr>" + "<th class='th_style' colspan=7>" + "여정 정보" + "</th>" + "</tr>" +
			    		"<tr>" + "<th class='th_style2'>" + "항공편명" + "</th>" + 
			    			     "<th class='th_style2'>" + "출발 날짜" + "</th>" +
			    			     "<th class='th_style2'>" + "출발 시간" + "</th>" +
			    			     "<th class='th_style2'>" + "도착 시간" + "</th>" +
			    			     "<th class='th_style2'>" + "출발 장소" + "</th>" +
			    			     "<th class='th_style2'>" + "도착 장소" + "</th>" +
			    			     "<th class='th_style2'>" + "좌석 번호" + "</th>" + "</tr>" +
	    			    "<tr>" + "<td>" + this.air_name1 + "</td>" + 
				    			 "<td>" + this.de_date + "</td>" +
				    	     	 "<td>" + this.de_time1 + "</td>" +
				    		     "<td>" + this.ar_time1 + "</td>" +
				    			 "<td>" + this.de_place1 + "</td>" +
				    			 "<td>" + this.ar_place1 + "</td>" +
				    			 "<td>" + this.seat_num1 + "</td>" + "</tr>" + 	
		    		    "<tr>" + "<td>" + this.air_name2 + "</td>" + 
				    			 "<td>" + this.ar_date + "</td>" +
				    	     	 "<td>" + this.de_time2 + "</td>" +
				    		     "<td>" + this.ar_time2 + "</td>" +
				    			 "<td>" + this.de_place2 + "</td>" +
				    			 "<td>" + this.ar_place2 + "</td>" +
				    			 "<td>" + this.seat_num2 + "</td>" + "</tr>" +
	    			 	"<tr>" + "<th class='th_style' colspan=7>" + "결제 정보" + "</th>" + "</tr>" +		 
	    			 	"<tr>" + "<th class='th_style2' colspan=3>" + "총 결제 금액" + "</th>" + 
    			    			 "<th class='th_style2' colspan=4>" + "결제 수단" + "</th>" + "<tr/>"+
	    				"<tr>" + "<td colspan=3>" + this.tic_price + "원" +"</td>" + 		    				  
	    		       			 "<td colspan=4>" + this.pay_date + "</td>" +"</tr>" + 	
	    		       			"<tr>" + "<td class='td_style1' colspan=4>" + "&nbsp;" +"</td>" + "</tr>" + 	    		       			 
	    			 	"<tr class='resInfoLi'><td class='td_style1' colspan=7><button class='button'>취소하기</button></td></tr>"
			    		
			    		 var pay_num=this.pay_num; 
			    		 var resInfo_num=this.resInfo_num;
			    		 var seat_num1=this.seat_num1;
			    		 var air_name1=this.air_name1;
			    		 var seat_num2=this.seat_num2;
			    		 var air_name2=this.air_name2;
			    		 
					$("#rInfo").on("click", ".resInfoLi button", function(){
						alert("pay_num : " + pay_num + "resInfo_num : " + resInfo_num + "seat_num1 : " + seat_num1 + "air_name1 : " + air_name1
								+ "seat_num2 : " + seat_num2 + "air_name2 : " + air_name2);
						var c = confirm("예약을 취소하시겠습니까?");	
						if(c==true){		
							
							//seat_YN=1
							$.ajax({
								type:'put',
								url:'/seats/seatud/'+ air_name1 +'/'+seat_num1 +'/'+air_name2 +'/'+seat_num2,
								headers:{
									"Content-Type":"application/json",
									"X-HTTP-Method-Override":"PUT"},
								data : JSON.stringify({air_name1 : air_name1, seat_num1 : seat_num1, air_name2 : air_name2, seat_num2 : seat_num2}),
								dataType:'text',
								success:function(result){
									console.log("result : "+result);
									if(result=='SUCCESS'){
											alert("Seat_YN update");
											location.href="/seat/resInfo";
										}
									}
								});
														
							//payment,resinfo 삭제
							$.ajax({
								async : false,
								type:'delete',
								url:'/seats/paymentRM/'+pay_num,
								headers:{
									"Content-Type":"application/json",
									"X-HTTP-Method-Override":"DELETE"
								},
								dataType:'text',
								success:function(result){
									console.log("result:" + result);
									if(result=='SUCCESS'){
										alert("payment&resinfo 삭제");
									}
								}
							});											
						}
						else if(c==false){
							location.href="/seat/resInfo";						
						}
					});
				});
				$("#rInfo").html(str);
			});
				
		});
		
	//Main으로 가는 버튼
	$("#goMain").on("click", function(){
		location.href="/seat/listSeat3"; //main으로 바꾸기
	});
});
</script>
</html>




