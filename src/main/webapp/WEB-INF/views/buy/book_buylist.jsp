<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<html>
<head>
<title>라온도서관 > 자료검색 > 도서검색</title>
</head>
<link rel="stylesheet" href="/resources/css/search/book.css">
<link rel="stylesheet" href="/resources/css/search/book_detail.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<body>

	<div class="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>

	<div class="container">
		<div class="sub_title">
			<div class="doc-info">
				<!-- doc title -->
				<div class="doc-title">
					<h3>도서검색</h3>
					<ul>
						<!-- 홈 btn img -->
						<li class="first" style="background-image: none;"><a href="/">
								<img src="/resources/imges/common/navi_home_icon.gif">
						</a></li>
						<li><a href="/search/book">자료검색</a></li>
						<li><a href="/search/book">도서구매</a></li>
					</ul>

				</div>
			</div>
		</div>
		<div class="section">
			<div class="doc">

				<!-- 왼쪽 사이드바 -->
				<jsp:include page="../search/lnb.jsp"></jsp:include>

				<!-- 본문 -->
				<div class="content">

					<div class="doc">
						<div class="wrapper-bbs" style="">

							<!-- 테이블 -->
							<div class="table-wrap">
								<h2>상품 확인</h2>
								<table>
									<thead>
										<tr>
											<th style="width: 200px;">이미지</th>
											<th style="">도서 정보</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class=""><img src="${book.book_cover}"
												style="width: 200px;"></td>
											<td class="" style="text-align: left;">
												<h2>${book.book_title }</h2>
												<p>
													<b>저자명</b> : ${book.book_author }
												</p>
												<p>
													<b>출판사</b>: ${book.book_publisher }
												</p>
												<p>
													<b>출간일</b> : ${book.book_pubDate }
												</p>
												<p>
													<b>가격</b> :
													<fmt:formatNumber value="${book.priceStandard }"
														type="currency" />
												</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<!-- 구매 -->
						</div>
						<div id="join_container">
							
							<form action="join.asp" method="post" id="join">

							</form>
						</div>
						<!--join_container 전체-->
						<div>
							<!-- 구매 -->

						</div>
					</div>

				</div>

			</div>


		</div>



	</div>



	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
	
</body>
</html>
