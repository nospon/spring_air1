<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/ico"  href="../resources/image/main_images/Favicon.ico"/>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" type="text/css"> 
	<title>회원가입 | 스프링에어</title>
	
</head>
<style>
   

body{
background-image: url('../resources/image/main_images/main_header.png'),url('../resources/image/main_images/main_footer2.png');
background-repeat: repeat-x;
background-position: left top,left bottom;
}

</style>
<body>
<body>
<%@include file="../main/header.jsp" %>
<section id="joinformArea">
<form name="joinform" action="joinSuccess.do" method="post">
<br><br><br><br><br>

<h3><b>회원가입</b></h3><br>



<table>
		
		<tr>
			<td class="td_style1">아이디<span>*</span></td>
			<td class="td_style2">
				<input type="text" name="id" id="id" placeholder="아이디">
			</td>
		</tr>
		<tr>
			<td class="td_style">비밀번호<span>*</span></td>
			<td>
				<input type="password" name="pass" id="pass" placeholder="비밀번호">
			</td>
		</tr>
		<tr>
			<td class="td_style">이름<span>*</span></td>
			<td>
				<input type="text" name="koname" id="kpname" placeholder="이름">
			</td>
		</tr>
		<tr>
			<td class="td_style">영문이름</td>
			<td>
				<input type="text" name="engname" id="engname" placeholder="ex)Kimmyeongsu">
			</td>
		</tr>
		<tr>
			<td class="td_style">　
			<br>성별&nbsp;<br>　
			</td><td>
				&nbsp;<input type="radio" class="w3-radio" name="gender" id="gender" value="남">남자&nbsp;
					  <input type="radio" class="w3-radio" name="gender"  value="여">여자</label>
			</td>
		</tr>
		<tr>
			<td class="td_style">생년월일</td>
			<td>
				<input type="text" name="birth" id="birth" placeholder="ex)920313">
			</td>
		</tr>
		<tr>
			<td class="td_style">전화번호</td>
			<td>
				<input type="text" name="tel" id="tel" placeholder="전화번호">
			</td>
		</tr>
		<tr>
			<td class="td_style">이메일 주소</td>
			<td>
				<input type="text" name="email" id="email" placeholder="aaa@aaa.com">
			</td>
		</tr>
		<tr>
			<td class="td_style">여권번호<span>*</span></td>
			<td>
				<input type="text" name="passport" id="passport" placeholder="여권번호">
			</td>
		</tr>
		<tr>
			<td class="td_style">국적</td>
			<td><input type="text" name="nation" id="nation" placeholder="국적"></td>
		</tr>		
	</table>
    <div class="button_style"><br>	
	<button class="button"><a href="javascript:joinform.submit()">회원 가입</a></button>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<button class="button1"><a href="javascript:joinform.reset()">다시작성</a></button>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<button class="button2"><a href="/main.do">메인페이지</a></button></div>


 

	<br><br><br><br><br><br><br><br>

</form>
</section>

<%@include file="../main/footer.jsp" %>
</body>


</html>