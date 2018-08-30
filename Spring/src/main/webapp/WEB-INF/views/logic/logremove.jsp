<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>삭제창</title>
</head>
<body>
	<section>
	<form action="logremove2.do" method="GET">
	<table>
		<tr>
			<td>	
				삭제 하시겠습니까?
			</td>
			<td bgcolor="skyblue">비밀번호</td>

                <td><input type="password" name="pass" maxlength="50"></td>
					
		</tr>
	
		<tr>
			<td>
				<input type="submit" value="삭제">
			</td>		
		</tr>
		
	</table>
	</form>
	</section>
</body>
</html>