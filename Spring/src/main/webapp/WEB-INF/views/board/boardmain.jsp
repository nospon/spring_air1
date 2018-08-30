<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	li{
		display:inline-block;
		padding: 2px;
		
	}
	a{
		text-decoration:none;
	}
</style>

<%
	HttpSession session = request.getSession(); 
	System.out.println(request.getSession());

	Object id = session.getAttribute("login");
	System.out.println(id);
	
%>

</head>
<body>
계시판으로 이동 성공<br>
<div>
	<table>
		<c:forEach var="boardVO" items="${list }">
			<tr>
				<td>${boardVO.board_num }</td>
				<td><a href='/board/read?board_num=${boardVO.board_num }'>${boardVO.title}</a></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate }"/></td>
				<td><span>${boardVO.viewcount }</span></td>
			</tr>
			
					
		</c:forEach>
		<c:if test="${session.id != null}">
			<a>글쓰기</a>
		</c:if>
	</table>
</div>

<div>
	
		<c:if test="${pageMaker.prev}">
			<li><a href="${pageMaker.makeQuery(pageMaker.startPage-1) } ">[이전]</a></li>
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage }" var="idx">
			<li <c:out value="${pageMaker.cri.page==idx?'class=active':'' }"/>>
					<a href="${pageMaker.makeQuery(idx) }">${idx }</a>
		</c:forEach>
			
		<c:if test="${pageMaker.next && pageMaker.endPage>0 }">
			<li><a href="${pageMaker.makeQuery(pageMaker.endPage+1) }">[다음]</a></li>
		</c:if>
	
</div>
	
</body>
</html>