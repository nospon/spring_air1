<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 세션</title>
</head>
<body>
	로그 세션 넘어오나<br>
	
 	${memberVO.id}<br>
	${memberVO.pass}<br>
	${memberVO.koname}<br>
	${memberVO.engname}<br>
	<a href="../logout.do">로그아웃</a>
	<a href="logremove.do">회원삭제</a>
	<a href="../seatlist.do">예약</a>
	<a href="updatejoin.do">수정페이지</a>
</body>
</html>