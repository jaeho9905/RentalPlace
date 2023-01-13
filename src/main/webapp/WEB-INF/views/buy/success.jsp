<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<meta charset="UTF-8">
<title>Good</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<body>
	<h1>결제에 성공했습니다</h1>
	<!-- <form action="/buy/book_buylist" method="get">
		<button id="main">주문목록으로 가기</button>
	</form> -->
	
	<form id="loan" onsubmit="return false;" method="post">
	   	<sec:authorize access="isAuthenticated()">
			<input type="hidden" class="user_email" name="user_email"
				value=<sec:authentication property="principal.dto.user_email"/>>
		</sec:authorize>
	
		<sec:authorize access="isAnonymous()">
			<input type="hidden" class="user_email" name="user_email">
		</sec:authorize>
	
		<input type="hidden" name="book_title" value="${book.book_title }">
		<input type="hidden" name="book_author" value="${book.book_author }">
		
		<input type="hidden" name="amount" value="${cri.amount }">
		<input type="hidden" name="page" value="${cri.page }">
		<input type="hidden" name="type" value="${cri.type }">
		<input type="hidden" name="keyword" value="${cri.keyword }">
	
   		<button id="main">주문목록으로 가기</button>
    </form>
	
	
	
	
	
	
	<script>
	$(function(){
		$("#main").on("click",function(){
			console.log("작");
			self.close();
			window.open("/buy/book_buylist");
		});
	});
	
</script>
</body>
</html>

