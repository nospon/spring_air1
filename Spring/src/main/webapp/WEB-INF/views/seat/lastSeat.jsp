<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<html>
<head>
	<title>예매완료</title>
</head>
<style>
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
<body>

<h3>예약이 완료되었습니다.</h3>

<div>
	<table id="resinfo" border=1></table>
</div>

</body>
</html>

<script>

$(document).ready(function(){
	//예약번호,이름,날짜 출력
	 $.getJSON('/seats/res/', function(data){
		//alert(data);
		console.log(data.length);
		var str="";
		
	$(data).each(
		function(){
		    str+="<tr>" + "<th>" + "이름" + "</th>" + 
		    	 	      "<th>" + "예약 번호" + "</th>" +
		    	 	      "<th>" + "날짜" + "</th>" +"</tr>" +	
    	 	     "<tr>" + "<td>" + this.name + "</td>" + 
		    	 	      "<td>" + this.res_rnum + "</td>" +
		    	 	      "<td>" + this.pay_date + "</td>" +"</tr>" + 
		    	 "<tr class='tr1'>" + "<td class='td1' colspan=3>" + "<input type='button' id='goResInfo' value='예약 확인하기'/>" + "&nbsp;" +
		    	 				   "<input type='button' id='goMain' value='메인으로'/>" + "</td>" + "</tr>"
		    		
		    	 				  $("#resinfo").on("click", ".tr1 #goResInfo", function(){
		    	 						location.href="/resInfo";
		    	 					});
		    	 					
		    	 					$("#resinfo").on("click", ".tr1 #goMain",function(){
		    	 						location.href="/main.do";
		    	 					});
		});
		$("#resinfo").html(str);
	}); 
});
</script>

