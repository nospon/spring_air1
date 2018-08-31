<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico"  href="../resources/image/main_images/Favicon.ico"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
	background-color: rgba(216,214,202,0.3);     
}


/* 결제하기 */
.seat_title{
   width: 235px;
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
   margin-bottom: -6px;
}



/*테이블 내 CSS*/

input[type=text],input[type=password]{
   width: 200px;
    height: 35px;
    padding-left: 5px;
    font-size: 15px;
    color: #485759;
    border: 1px solid #D8D6CA;   
    background-color: rgba(216,214,202,0.2);   
}


.section_All select {
   width: 200px;
    height: 35px;
    padding-left: 5px;
    font-size: 15px;
    color: #485759;
    border: 1px solid #D8D6CA;   
    background-color: rgba(216,214,202,0.2);    
 }
 

.button_css {
	margin-left: 350px;
}


.button_css button {
    width: 200px;
    background-color: #fe5674;
    color: white;
    padding: 20px 10px;    
    border: none;
    border-radius: 4px;
    cursor: pointer;       
}

.button_css button:hover {
    background-color: #fe123c;
}




#paytable{
	border-collapse: collapse;
}
#paytable th{
	width:100px;
}





</style>
</head>
<title>결제하기 | 스프링에어</title>
<body>

<%@include file="../main/header.jsp" %>

<div class="section_All">
<div id = 'container'>
<br><br><br>
<table class="seat_title"><tr>
   <td><img src="../resources/image/main_images/airplain.png" height="25px" width="35px"></td>
   <td><h3><b>결제하기 | 좌석예약</b></h3></td>
</tr></table>

	 
	<table id = 'paytable' border=1>
		<tr>
			<th class="td_style1">이름</th>
			<td class="td1"><input type="text" id="name" placeholder="이름"/></td>
		</tr>
		<tr>
			<th class="td_style1">결제수단</th>
			<td class="td2">
                <select name="pay_card" required="required">
                   	<option value="선택하세요" selected="selected" >선택하세요</option>
					<option value="신용카드">신용카드</option>
				</select>
			</td>
		</tr>       
       	<tr>
           	<th class="td_style1">카드사</th>
               <td class="td3">
               	<select name="pay_cardname" required="required">
               		<option value="선택하세요" selected="selected">선택하세요</option>
					<option value="BC카드">BC카드</option>
                    <option value="삼성카드">삼성카드</option>
				</select>
               </td>
           </tr>
           <tr>
           	<th class="td_style1">카드번호</th>
              <td class="td4">
               	<input type="text" id='card_num1' maxlength='4' size="5px" placeholder="****" required="required"/> -
           		<input type="text" id='card_num2' maxlength='4' size="5px" placeholder="****" required="required"/> -
     			<input type="password" id='card_num3' maxlength='4' size="5px" placeholder="****" required="required"/> -
           		<input type="password" id='card_num4' maxlength='4' size="5px" placeholder="****" required="required"/>
               </td> 
           </tr>
           <tr>
           	<th class="td_style1">비밀번호</th>
               <td class="td5">
               	<input type="password" id='card_password' maxlength='4' size="5px" placeholder="비밀번호" required="required"/>
               </td>
           </tr>
           <tr>
           	<th class="td_style1">CVC번호</th>
               <td class="td6">
               	<input type="password" id='card_cvc' maxlength='3' size="3px" placeholder="***" required="required"/>
               </td>
           </tr>
           <tr>
	           <th class="td_style1">티켓가격</th>
               <td class="td7">
               	<input type="text" id='tic_price' value='' readonly/>원
               </td>
	       </tr>        
       </table>
       <br><br>
       		<div class="button_css">
         	&nbsp;
         	<button id='gopay'  class='btn btn-gopay'>결제하기</button>
         	&nbsp;&nbsp;
         	 <!--<type="submit"-->
	        <button id='goback'  class='btn btn-goback'>취소하기</button>   
       		</div>
      <ul id="ticketprice"></ul>
      
	</div></div>
<br><br><br><br><br><br><br><br>
<%@include file="../main/footer.jsp" %>	

</body>
<script>
//결제폼등록 

$("#gopay").on("click",function(){
		
	var name = $("#name").val();
	var paycard = $("select[name=pay_card]").val();
 	var paycardname = $("select[name=pay_cardname]").val();
	var cardnum = $("#card_num1").val() + $("#card_num2").val() + $("#card_num3").val() + $("#card_num4").val() ; 
	var cardpassword = $("#card_password").val();
	var cardcvc = $("#card_cvc").val();
	var ticprice = $("#tic_price").val();
	var resrnum="";
 	for(i=0;i<10;i++){
		resrnum+=Math.floor((Math.random()*10));
	}
	 	 
	$.ajax({
		type : 'post',
		url : '/seats/',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST" },
		dataType : 'text',
		data : JSON.stringify({name : name, pay_card : paycard, pay_cardname : paycardname, pay_cardnum : cardnum, pay_cardpw : cardpassword, pay_cardcvc : cardcvc, res_rnum : resrnum, tic_price : ticprice}),
		success : function(result){
			console.log("result : " + result);
			if(result=='SUCCESS'){
				alert('결제가 완료되었습니다.');
				location.href="/seat/lastSeat"; //페이지 경로 변경			
			}
		}
	});
});

//취소버튼
$(document).ready(function(){
	
	$("#goback").on("click",function(){
		var c = confirm("결제를 취소하시겠습니까?");
		if(c==true){			
			location.href="/seat/listSeat3";		
		}
		else if(c==false){
			location.href="/seat/payment";
		}	
	});
});

//ticket값

$(document).ready(function(){    
	//var air_name="JE01";
	$.getJSON('/seats/tic/', function(data){
		//alert(data);
		console.log(data.length);
		var str="";
		
	$(data).each(
		function(){
		    	str=this.tic_price;
		});
		console.log("성공"+str);
	
		$("#tic_price").val(str);
	});
});

</script>
</html>