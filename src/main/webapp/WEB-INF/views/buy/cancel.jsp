<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bad</title>
</head>
<body>
	<h1>결제에 실패했습니다</h1>
	<form action="/buy" method="get">
		<button id="main">메인으로 가기</button>
	</form>
	
</body>
</html>

<script>
	$("#main").click(function(){
		window.close();
	})
</script>