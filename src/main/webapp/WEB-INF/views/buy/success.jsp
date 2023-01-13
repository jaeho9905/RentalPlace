<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good</title>
</head>
<body>
	<h1>결제에 성공했습니다</h1>
	<form action="/buy/book_buylist" method="get">
		<button id="main">주문목록으로 가기</button>
	</form>
	
</body>
</html>

<script>
	$("#main").click(function(){
		window.close();
	})
</script>