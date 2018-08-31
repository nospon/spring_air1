<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>결제하기</title>
<style>
#paytable{
	border-collapse: collapse;
}
#paytable th{
	width:100px;
}
</style>
</head>
<body>
<h3>결제하기</h3>
<div id = 'container'>
	 
	<table id = 'paytable' border=1>
		<tr>
			<th>이름</th>
			<td class="td1"><input type="text" id="name" value="값 받아오기"/></td>
		</tr>
		<tr>
			<th>결제수단</th>
			<td class="td2">
                <select name="pay_card" required="required">
                   	<option value="선택하세요" selected="selected" >선택하세요</option>
					<option value="신용카드">신용카드</option>
				</select>
			</td>
		</tr>       
       	<tr>
           	<th>카드사</th>
               <td class="td3">
               	<select name="pay_cardname" required="required">
               		<option value="선택하세요" selected="selected">선택하세요</option>
					<option value="BC카드">BC카드</option>
                    <option value="삼성카드">삼성카드</option>
				</select>
               </td>
           </tr>
           <tr>
           	<th>카드번호</th>
              <td class="td4">
               	<input type="text" id='card_num1' maxlength='4' size="5px" required="required"/> -
           		<input type="text" id='card_num2' maxlength='4' size="5px" required="required"/> -
     			<input type="password" id='card_num3' maxlength='4' size="5px" required="required"/> -
           		<input type="password" id='card_num4' maxlength='4' size="5px" required="required"/>
               </td> 
           </tr>
           <tr>
           	<th>비밀번호</th>
               <td class="td5">
               	<input type="password" id='card_password' maxlength='4' size="5px" required="required"/>
               </td>
           </tr>
           <tr>
           	<th>CVC번호</th>
               <td class="td6">
               	<input type="password" id='card_cvc' maxlength='3' size="3px" required="required"/>
               </td>
           </tr>
           <tr>
	           <th>티켓가격</th>
               <td class="td7">
               	<input type="text" id='tic_price' value='' readonly/>원
               </td>
	       </tr> 
	       <tr>
	           <td class="td8" colspan=2 align="center">
	               	<button id='gopay' class='btn btn-gopay'>결제하기</button> <!--<type="submit"-->
	               	<button id='goback' class='btn btn-goback'>취소하기</button>          
	           </td>
           </tr>
       </table>
       
      <ul id="ticketprice"></ul>
      
	</div>
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
				location.href="/lastSeat";		
			}
		}
	});
});

//취소버튼
$(document).ready(function(){
	
	$("#goback").on("click",function(){
		var c = confirm("결제를 취소하시겠습니까?");
		if(c==true){			
			location.href="/main.do";		
		}
		else if(c==false){
			location.href="/payment";
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