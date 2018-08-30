<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<script src="https://code.jquery.com/jquery-3.2.1.js">
	
</script>
<link rel="stylesheet" href="/css/jquery-ui.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js">
	
</script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'>
	
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript'
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js">
	
</script>
<script src="/js/bootstrap-datepicker.kr.js" charset="UTF-8">
	
</script>
<h3>국내선</h3>
<table border=1 id="cc">
	<tr>
		<th>출발장소</th>
		<th>도착장소</th>
		<th>출발시간</th>
		<th>도착시간</th>
		<th>항공편</th>
		<th>정상운임(원)</th>
		<th>좌석</th>
		<th>선택</th>
	</tr>
	<c:forEach var="scheduleVO" items="${listAll}">
		<tr>
			<td>${scheduleVO.de_place}</td>
			<td>${scheduleVO.ar_place}</td>
			<td>${scheduleVO.de_time}</td>
			<td>${scheduleVO.ar_time}</td>
			<td>${scheduleVO.air_name}</td>
			<td>${scheduleVO.tic_price }</td>
			<td></td>
			<td><input type="radio" name="1구간" id="1구간"
				onchange="test(this);"></td>
		</tr>
	</c:forEach>

</table>
<div id=ff></div>
<script>
	function test(me) {
		var isChecked = $(me).is(":checked");
		var txt;

		if (isChecked == true) {
			txt = $(me).parent().parent().text();

			$('#ff').text(txt);
		}
	}
</script>