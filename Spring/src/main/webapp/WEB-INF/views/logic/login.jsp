<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
 <link rel="icon" type="image/ico"  href="../resources/image/main_images/Favicon.ico"/>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" type="text/css"> 
	<title>로그인 | 스프링에어</title>
	 
</head>
<style>


body{
background-image: url('../resources/image/main_images/main_header.png'),url('../resources/image/main_images/main_footer2.png');
background-repeat: repeat-x;
background-position: left top,left bottom;
}

</style>
<body>
<%@include file="../main/header.jsp" %>


<section id="loginformArea">
	<form name="loginform" action="loginSusessce.do" method="post">
<br><br><br><br><br><br><br>


<h1>로그인 페이지</h1><br>
스프링에어 웹사이트에 오신 것을 환영합니다!<br>
항공권 온라인 예약은 회원가입 절차 후에 가능합니다.<br>
<br>
<div class="background">
<br><br><br><br>
<table>		
		<tr>
			<td>아이디&nbsp;</td>
			<td>
				<input type="text" name="id" id="id" placeholder="아이디">
			</td>
            <td></td>
			<td rowspan=2><button class="button">
			<a href="javascript:loginform.submit()">로그인</a></button></td>			
			</tr>
		</tr>
		<tr>
			<td>비밀번호&nbsp;</td>          
			<td><input type="password" name="pass" id="pass" placeholder="비밀번호"></td>		
            <td>&nbsp;&nbsp;</td>	
        <tr><td></td></tr>  <tr><td></td></tr>   
		
	
</table>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button class="button1"><a href="join.do">회원가입</a></button>	
&nbsp;
<button class="button2"><a href="../mainpage.do">메인페이지</a></button>
<br><br><br><br>
</div>
<br><br><br><br><br>
<br><br><br><br><br>
</form>
	
</section>

<%@include file="../main/footer.jsp" %>
</body>
</html>
