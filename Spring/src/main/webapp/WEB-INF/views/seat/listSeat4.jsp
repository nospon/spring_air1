<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    color: #252D2E;
}

th, td {
    padding: 10px;
    text-align: left;
    border: 1px solid #D8D6CA; 
    font-size: 14px;
}

/*좌석번호 가격속성*/
.td_style1{
	background-color: rgba(216,214,202,0.3); 
    border-top: 3px solid #fe5674;
    border-right: 1px solid rgba(0,0,0,0);  
    border-bottom: 1px solid rgba(224,112,136,0.4); 
}

/*check속성*/
.td_style2{
	background-color: rgba(216,214,202,0.3); 
    border-top: 3px solid #fe5674;  
    border-bottom: 1px solid rgba(224,112,136,0.4);  
    width:40%;
    text-align: center;
}





/*나머지 행,열*/
.td_style3{
	background-color: rgba(216,214,202,0.05); 
    border-bottom: 1px solid rgba(216,214,202,0.7); 
    border-right: 1px solid rgba(216,214,202,0.4); 
}




/*버튼 속성*/

#button {
    width: 204px;
    background-color: #fe5674;
    color: white;
    padding: 10px 10px;    
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-left: 109px; 
}

#button:hover {
    background-color: #fe123c;
}


/* 가는편 좌석 예약 속성 */
.seat_title{
   width: 220px;
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
   margin-bottom: 12px;
}



/* 하단 좌석배치표 글씨및 정사각형 속성 */

.seat_title1{
   width: 280px;
   height: 25px;
   font-weight: bold;
   color: #252D2E;
   margin-bottom: -15px;
   margin-left: -12px;
   border: 2px solid rgba(0,0,0,0);      
   background: rgba(0,0,0,0);
}

.seat_title1 th, .seat_title1 td {
   border: 2px solid rgba(0,0,0,0);      
  
}


.seat_title1 img {
   margin-bottom: 12px;
}


.bottom_text {
   width: 1100px;
   height: 25px;
   font-weight: bold;
   color: #252D2E;
   margin-bottom: -15px;        
   border-top: 3px solid #fe5674;  
   background-color: rgba(216,214,202,0.2); 
}



.bottom_td1{
   width: 1.5%;      
   border-right: 1px solid rgba(0,0,0,0);   
}

.bottom_td2{
   width: 1.5%; 
   border-left: 1px solid rgba(0,0,0,0);    
   border-right: 1px solid rgba(0,0,0,0);   
}

.bottom_td3{
   width: 100px; 
   border-left: 1px solid rgba(0,0,0,0);         
}

.bottom_td4{
   width: 80px; 
   border-left: 1px solid rgba(0,0,0,0);    
   border-right: 1px solid rgba(0,0,0,0);   
   margin-left: -500px;
}





.square1{
 	width: 32px;
    height: 32px;
    background: #FE7E87;
    margin-left: 10px;
    
}


.square2{
 	width: 32px;
    height: 32px;
    background: #B6DDE8;   

}

.square3{
 	width: 32px;
    height: 32px;
    background: #E4E1CE;    
}







.pagination{
	margin-left: 350px;	
}



.pagination a{
	text-decoration: none;
	color: #fe5674;
}


</style>

<title>좌석 선택 | 스프링에어</title>

<body>
<%@include file="../main/header.jsp" %>
<div class="section_All">
<br><br><br>
<table class="seat_title"><tr>
   <td><img src="../resources/image/main_images/airplain.png" height="25px" width="35px"></td>
   <td><h3><b>오는편 | 좌석 예약</b></h3></td>
</tr></table>


<div>
	<table id="passenger_details"></table>
</div>

<div id="seatYN" style="display: none">	
	<div class='seat-title'></div>
	<div>
		<button id="seatResBtn">예약하기</button>
	</div>
</div>

<div><ul class="pagination"></ul></div>

<table class="seat_title1"><tr>
   <td><img src="../resources/image/main_images/airplain.png" height="25px" width="35px"></td>
   <td><h3><b>Spring air | 좌석 배치도</b></h3></td>
</tr></table>

<table class="bottom_text">
<tr>
<td class="bottom_td1"><div class="square1"></div></td>
<td class="bottom_td4">좌석</td>
<td class="bottom_td2"><div class="square2"></div></td>
<td class="bottom_td4">비상구 좌석</td>
<td class="bottom_td2"><div class="square3"></div></td>
<td class="bottom_td4">화장실</td>
<td class="bottom_td3"><span>[ A,F는 창가 좌석입니다. ]</span></td>
</tr>
</table><br>


<img src="../resources/image/main_images/seatlayout.png">
</div>
<br><br>
<%@include file="../main/footer.jsp" %>
<script>
 //이거!
 var air_name="";
 var sc_num="";
 var str=""; 
 var seatRePage=1;
 
 $(document).ready(function(){    
	 $.getJSON('/seats/snum',function(data){	
		 $(data).each(
			function(){	
				air_name+=this.air_name2;
				sc_num+=this.sc_num2;				
			});
		$.getJSON('/seats/all/'+air_name+'/'+sc_num, function(data){
			
			var str="";
			str="<form role='form' method='post'>"+ 
				"<tr>"+'<th class="td_style1">'+"좌석번호"+"</th>"+
				'<th class="td_style1">'+"가격"+"</th>"+
				'<th class="td_style2">'+"check"+"</th>"+"</tr>"
		$(data.list).each(
			function(){
			    	str+="<tr class='seatLi'>"+'<td class="td_style3">'+this.seat_num+"</td>"+
	    			        '<td class="td_style3">'+this.tic_price+"</td>"+
	    			        '<td class="td_style3">'+"<button id='button 'class='seatbtn'>예약하기</button>"+"</td>"+"</tr>"	
		
		});
		str+="</form>"; 
		$("#passenger_details").html(str);
	});
	
	//예약하기 checkbox event
	$("#passenger_details").on("click",".seatLi button",function(){
		var str="";
		var tdArr=new Array();
		var checkBtn=$(this);
		
		var tr=checkBtn.parent().parent();
		var td=tr.children();
		
		var seat_num=td.eq(0).text();
		var tic_price=td.eq(1).text();
		
		td.each(function(i){
			tdArr.push(td.eq(i).text());
		});
		
		str+="좌석번호 : " + seat_num + " | " + "가격 : " + tic_price + "원";
		
		$(".seat-title").html(str);
				
		var con=confirm(str);
		
		if(con==true){
				 	 	
			$.ajax({
			type:'put',
			url:'/seats/'+air_name+'/'+sc_num+'/'+seat_num,
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"PUT"},
			data : JSON.stringify({air_name : air_name, sc_num : sc_num, seat_num : seat_num}),
			dataType:'text',
			success:function(result){
				console.log("result : "+result);
				if(result=='SUCCESS'){
					$("#seatYN").hide();
				
					var c = confirm("해당 좌석을 선택하시겠습니까?");
					var formObj=$("form[role='form']");	
					console.log(formObj);
					if(c==true){		
						formObj.attr("action","/payment");
						formObj.attr("method","get");
						formObj.submit();
						
					}
					else if(c==false){
						location.href="/main.do";
					}
				}
			}
		});	
	 
	  //resinfo table에 값 넣기

		$.ajax({
			type:'put',
			url:'/seats/resinfo1/'+air_name+'/'+sc_num+'/'+seat_num,
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"PUT"},
			data : JSON.stringify({air_name : air_name, sc_num : sc_num, seat_num : seat_num}),
			dataType:'text',
			success:function(result){
				if(result=='SUCCESS'){
					console.log("resinfo update");
				}
			}
		});	
		}
	});
	// end------   예약하기 버튼 event 	
	
	// 페이징
	getPageList(1);
	function getPageList(page){
		
		$.getJSON("/seats/"+air_name+"/"+sc_num+"/"+page, function(data){
			console.log(data.list.length);
			var str="";
			str="<form role='form' method='post'>"+
				"<tr>"+'<th class="td_style1">'+"좌석번호"+"</th>"+
				'<th class="td_style1">'+"가격"+"</th>"+
				'<th class="td_style2">'+"check"+"</th>"+"</tr>"
		$(data.list).each(
			function(){
			    	str+="<tr class='seatLi'>"+'<td class="td_style3">'+this.seat_num+"</td>"+
			    	'<td class="td_style3">'+this.tic_price+"</td>"+
	    			        "<td>"+"<button id='button' class='seatbtn'>예약하기</button>"+"</td>"+"</tr>"	
		
		});
	    str+="</form>"; 
		$("#passenger_details").html(str);
		printPaging(data.pageMaker);
		});
	}
	
	function printPaging(pageMaker){
		
		var str="";
		
		if(pageMaker.prev){
			str += "<li style='display:inline'><a href = '"+(pageMaker.startPage-1)+"'> << </a></li>";
		}
		
		for(var i=pageMaker.startPage, len=pageMaker.endPage; i <= len; i++){
			var strClass = pageMaker.cri.page == i?'class = active':'';
			str += "<li style='display:inline'"+strClass+"><a href='"+ i +"'>" + i + "</a></li>";
		}
		
		if(pageMaker.next){
			str += "<li style='display:inline'><a href = '"+(pageMaker.endPage+1)+"'> >> </a></li>";
		}
		
		$('.pagination').html(str);
	}
	
	$(".pagination").on("click", "li a", function(event){
		event.preventDefault();
		seatRePage = $(this).attr("href");
		getPageList(seatRePage);
	});
	
 });
 });
 </script>

<div id="container">	
</div>
</body>


