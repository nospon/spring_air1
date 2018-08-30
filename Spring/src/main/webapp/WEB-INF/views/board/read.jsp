<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
>

<section class="content">

				
				<form role="form" method="post">
					<label for="exampleInputEmail1">번호 : </label>
					
					${boardVO.board_num }
					
				</form>
				
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">제목 : </label>
						
						${boardVO.title }
						
					</div>
					
					
					
				</div>
				
				<div class="box-footer">
					<button type="submit" class="btn btn-warning">수정</button>
					<button type="submit" class="btn btn-danger">삭제</button>
					<button type="submit" class="btn btn-primary">목록</button>
				</div>
	
</section>


<script>
$(document).ready(function(){
	var formObj=$("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click",function(){	//수정
		formObj.attr("action","/board/modify");
		formObj.attr("method","get");
		formObj.submit();
	});
	$(".btn-danger").on("click",function(){		//삭제
		formObj.attr("action","/board/remove");		
		formObj.submit();
	});
	$(".btn-primary").on("click",function(){	//목록		
		self.location="/board/listAll";
	});
});
</script>



