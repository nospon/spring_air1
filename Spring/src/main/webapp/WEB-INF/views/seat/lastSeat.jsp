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
    text-align: center;
    border: 1px solid #D8D6CA; 
    font-size: 14px;
}

.td_style1{
	background-color: rgba(216,214,202,0.3); 
}

#td_style2{
	border: 1px solid rgba(0,0,0,0);  
	background-color: rgba(0,0,0,0); 
}

#td_style3{
	border: 1px solid rgba(0,0,0,0);  
	background-color: rgba(0,0,0,0); 
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

<div class="section_All">
<br><br><br>
<table class="seat_title"><tr>
   <td><img src="../resources/image/main_images/airplain.png" height="25px" width="35px"></td>
   <td><h3><b>예약 완료 페이지 | 좌석예약</b></h3></td>
</tr></table>
<br><br>
<div>
	<table id="resinfo" border=1></table>
</div></div>

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
		    	 	     "<tr>" + "<td id='td_style3'>" + "</td>" +"</tr>" + 
		    	 "<tr class='tr1'>" + "<td class='td1' id='td_style2' colspan=3>" + "<input type='button' id='goResInfo' value='예약 확인하기'/>"
		    	 + "&nbsp;" + "&nbsp;" +
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
