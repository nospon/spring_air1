<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>예약 확인</title>
<style>
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
}
</style>
</head>
<body>
	<h3>예약 조회</h3>
	
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
			<td class='restb_td5' colspan=2>
				<input type="button" id="goResInfo" value="조회하기"/>
				<input type="button" id="goMain" value="메인으로"/>
			</td>
		</tr>
	</table>
	</div>
	<br><br>	
	<div><table id="rInfo" border=1></table></div>
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
			    		"<tr>" + "<th colspan=7>" + "예약 정보" + "</th>" + "</tr>" +
					    "<tr>"+ "<th colspan=3>" + "이름" + "</th>" + 
		    			    	"<th colspan=4>" + "예약 날짜" + "</th>" + "<tr/>"+
			    		"<tr>"+ "<td colspan=3>" + this.name + "</td>" + 		    				  
			    		        "<td colspan=4>" + this.pay_date + "</td>" +"</tr>" + 		    		         
			    		"<tr>" + "<th colspan=7>" + "여정 정보" + "</th>" + "</tr>" +
			    		"<tr>" + "<th>" + "항공편명" + "</th>" + 
			    			     "<th>" + "출발 날짜" + "</th>" +
			    			     "<th>" + "출발 시간" + "</th>" +
			    			     "<th>" + "도착 시간" + "</th>" +
			    			     "<th>" + "출발 장소" + "</th>" +
			    			     "<th>" + "도착 장소" + "</th>" +
			    			     "<th>" + "좌석 번호" + "</th>" + "</tr>" +
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
	    			 	"<tr>" + "<th colspan=7>" + "결제 정보" + "</th>" + "</tr>" +		 
	    			 	"<tr>" + "<th colspan=3>" + "총 결제 금액" + "</th>" + 
    			    			 "<th colspan=4>" + "결제 수단" + "</th>" + "<tr/>"+
	    				"<tr>" + "<td colspan=3>" + this.tic_price + "원" +"</td>" + 		    				  
	    		       			 "<td colspan=4>" + this.pay_date + "</td>" +"</tr>" + 	
	    			 	"<tr class='resInfoLi'><td colspan=7><button>취소하기</button></td></tr>"
			    		
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
											location.href="/main.do";
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
							location.href="/resInfo";						
						}
					});
				});
				$("#rInfo").html(str);
			});
				
		});
		
	//Main으로 가는 버튼
	$("#goMain").on("click", function(){
		location.href="/main.do"; //main으로 바꾸기
	});
});
</script>
</html>




