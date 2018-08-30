<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	#seatYN{
		Width:300px;
		height:100px;
		background-color:lightgray;
		position:absolute;
		top:100px;
		left:400px;
		margin-top:-50px;
		margin-left:-150px;
		padding:10px;
		z-index:1000; 
	}
	
</style>

<title>좌석 선택(가는편)</title>
<h3>가는편 좌석 예약</h3>
<div>
	<table id="passenger_details" border=1></table>
</div>

<div class='span'><span>[ A,F는 창가 좌석입니다. ]</span></div>

<div id="seatYN" style="display: none">	
	<div class='seat-title'></div>
	<div>
		<button id="seatResBtn">예약하기</button>
	</div>
</div>

<div><ul class="pagination"></ul></div>

<script>
var str=""; 
var seatRePage=1;
var air_name="";
var sc_num=""; 
 
 $(document).ready(function(){    
		
 $.getJSON('/seats/snum',function(data){	
		 $(data).each(
			function(){	
				air_name+=this.air_name1;
				sc_num+=this.sc_num1;
				//alert(air_name);
		 		//alert(sc_num);
			});
			//alert(air_name);
 		//alert(sc_num);
		 	
	 	$.getJSON('/seats/all/'+air_name+'/'+sc_num, function(data){
			//alert(data);
			//console.log(data.length);
			var str="";
			str="<form role='form' method='post'>"+ 
				"<tr>"+"<th>"+"좌석번호"+"</th>"+
				"<th>"+"가격"+"</th>"+
				"<th>"+"check"+"</th>"+"</tr>"
		$(data.list).each(
			function(){
			    	str+="<tr class='seatLi'>"+"<td>"+this.seat_num+"</td>"+
	    			        "<td>"+this.tic_price+"</td>"+
	    			        "<td>"+"<button class='seatbtn'>예약하기</button>"+"</td>"+"</tr>"	
		
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
		//$("#seatYN").show();
		
		var con=confirm(str);
		
		if(con==true){		
		//예약하기 버튼 event
		/*  $("#seatResBtn").on("click",function(){ */
			//alert("확인");	 	
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
					//alert("수정되었습니다.");
					var c = confirm("해당 좌석을 선택하시겠습니까?");
					var formObj=$("form[role='form']");	
					console.log(formObj);
					if(c==true){		
						formObj.attr("action","/seat/listSeat4");
						formObj.attr("method","get");
						formObj.submit();
						//$('.seatLi button').attr('disabled', true);
						//location.href="";
					}
					else if(c==false){
						location.href="/seat/listSeat3";
						//나중에 메인페이지로 변경
					}
				}
			}
		});	
	 //resinfo table에 값 넣기

		$.ajax({
			type:'post',
			url:'/seats/resinfo/'+air_name+'/'+sc_num+'/'+seat_num,
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			dataType:'text',
			data:JSON.stringify({
				air_name:air_name,
				sc_num:sc_num,
				seat_num:seat_num
			}),
			success:function(result){
				if(result=='SUCCESS'){
					alert("resinfo등록");
				}
			}
		});
			
	/*  }); */
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
				"<tr>"+"<th>"+"좌석번호"+"</th>"+
				"<th>"+"가격"+"</th>"+
				"<th>"+"check"+"</th>"+"</tr>"
		$(data.list).each(
			function(){
			    	str+="<tr class='seatLi'>"+"<td>"+this.seat_num+"</td>"+
	    			        "<td>"+this.tic_price+"</td>"+
	    			        "<td>"+"<button class='seatbtn'>예약하기</button>"+"</td>"+"</tr>"	
		
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

