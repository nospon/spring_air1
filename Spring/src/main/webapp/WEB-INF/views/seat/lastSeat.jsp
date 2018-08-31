<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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



table {	
    border-collapse: collapse;
    width: 100%;
    background-color: rgba(216,214,202,0.05);
    border-top: 3px solid #fe5674;  
    color: #252D2E;
}

th, td {
    padding: 10px;
    text-align: center;
    border: 1px solid #D8D6CA; 
    font-size: 14px;
}

.td_style1{
	background-color: rgba(216,214,202,0.3); 
}



/* 예약완료 타이틀 */
.seat_title{
   width: 300px;
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




#resinfo{
	border-collapse: collapse;
}
#resinfo .td1{
	text-align:center;
}
#resinfo td{
	width:200px;
	text-align:center;
}
</style>
	
</head>
<title>예약 완료 | 스프링에어</title>
<body>

<%@include file="../main/header.jsp" %>

<br><br><br>
<table class="seat_title"><tr>
   <td><img src="../resources/image/main_images/airplain.png" height="25px" width="35px"></td>
   <td><h3><b>예약 완료 페이지 | 좌석예약</b></h3></td>
</tr></table>

<div>
	<table id="resinfo" border=1></table>
</div>

<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>

<%@include file="../main/footer.jsp" %>	

<script>

$(document).ready(function(){
	//예약번호,이름,날짜 출력
	 $.getJSON('/seats/res/', function(data){
		//alert(data);
		console.log(data.length);
		var str="";
		
	$(data).each(
		function(){
		    str+="<tr>" + '<th class="td_style1">' + "이름" + "</th>" + 
		    '<th class="td_style1">' + "예약 번호" + "</th>" +
		    '<th class="td_style1">' + "날짜" + "</th>" +"</tr>" +	
    	 	     "<tr>" + "<td>" + this.name + "</td>" + 
		    	 	      "<td>" + this.res_rnum + "</td>" +
		    	 	      "<td>" + this.pay_date + "</td>" +"</tr>" + 
		    	 "<tr class='tr1'>" + "<td class='td1' colspan=3>" + "<input type='button' id='goResInfo' value='예약 확인하기'/>" + "&nbsp;" +
		    	 				   "<input type='button' id='goMain' value='메인으로'/>" + "</td>" + "</tr>"
		    		
		    	 				  $("#resinfo").on("click", ".tr1 #goResInfo", function(){
		    	 						location.href="/seat/resInfo";
		    	 					});
		    	 					
		    	 					$("#resinfo").on("click", ".tr1 #goMain",function(){
		    	 						location.href="";
		    	 					});
		});
		$("#resinfo").html(str);
	}); 
});
</script>
</body>
</html>
