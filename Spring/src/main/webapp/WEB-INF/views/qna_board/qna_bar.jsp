<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/ico"  href="../resources/image/main_images/Favicon.ico"/>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/qna_board.css" type="text/css"> 
	<title>고객문의 | 스프링에어</title>
	
	
</head>
<body>



<!-- 고객문의 -->
<div id="qna" class="tabcontent">
<form name="boardform" action="#" method="post">
<br>


<h3><b>고객문의</b></h3>
<br><br>
<h6><b>신청자 정보</b></h6>

<table>
<tr>
<td class="td_style1">
이름
</td>
<td class="td_style2">
<input type="text" name="name" id="name" placeholder="이름">
</td>
</tr>

<tr>
<td class="td_style">
이메일 주소
</td>
<td>
<input type="text" name="email" id="email" placeholder="aaa@aaa.com">
</td>
</tr>

<tr>
<td class="td_style">
전화번호
</td>
<td>
<input type="text" name="tel" id="tel" placeholder="전화번호">
</td>
</tr>
</table>


<br><br>
<h6><b>질문사항</b></h6>
<table>

<tr>
<td class="td_style1">
제목
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td class="td_style2">
<input type="text" name="tel" id="tel" placeholder="제목">
</td>
</tr>

<tr>
<td class="td_style">
내용
</td>
<td>
<textarea rows="20" cols="56.6" placeholder="내용을 입력하세요">
</textarea>
</td>
</tr>

</table>

<br>
<button class="button"><a href="#">보내기</a></button>
 

<br><br><br><br><br><br><br><br>

</form>
</div>
<!-- //고객문의 -->




</body>
</html>