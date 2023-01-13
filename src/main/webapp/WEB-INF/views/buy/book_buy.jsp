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
							<h3>정보 입력</h3>
							<p class="information">
								<strong class="point">*</strong> 는 필수입력 항목을 나타냅니다.
							</p>
							<form action="join.asp" method="post" id="join">
								<fieldset class="join1">
									<legend>필수 입력 항목</legend>
									<p class="box_i">
										<span class="box_s"><strong class="point">*배송방법</strong>
										</span>
										<input	type="radio" name="receive" id="normal">
										<label for="normal" class="radio_t">일반 배송</label>
										<input type="radio"	name="receive" id="overseas">
										<label for="overseas" class="radio_t">해외 배송</label>
										<input type="radio"	name="receive" id="convenience">
										<label for="convenience" class="radio_t">편의점 배송</label>
									</p>

									<!-- <p class="box_t">
										<strong class="point">주의!</strong> 아이디는 영문자와 숫자만을 사용하여 4글자이상
										16글자 이하로 작성해 주세요.
									</p> -->

									<p class="box_i">
										<label for="u_id"><strong class="point">*</strong>수령인</label><input
											type="text" id="u_id" required>
										
									</p>

									<!-- <p class="box_t">
										<strong class="point">주의!</strong> 비밀번호는 보안을 위해 영문자, 숫자 및 특수문자
										등을 조합하여 작성하시기 바랍니다.
									</p>
									<p class="box_t">
										<strong class="point">주의!</strong> 비밀번호는 보안을 위해 4글자 이상으로 작성해
										주세요.
									</p> -->

									<p class="box_i">
										<label for="pwd1"><strong class="point">*</strong>배송 주소</label><input
											type="password" id="pwd1" required>
										<input type="button"
											value="주소 찾기" class="zip_btn">
									</p>
									<p class="box_i">
										<label for="pwd2"><strong class="point">*</strong>도로명 주소</label><input type="password" id="pwd2" required>
									</p>

									<p class="box_i">
										<label for="pwd2"><strong class="point">*</strong>지번 주소</label><input type="password" id="pwd2" required>
									</p>

									<p class="box_i">
										<label for="zip1"><strong class="point">*</strong>우편번호</label><input
											type="text" id="zip1" required> - <input type="text"
											id="zip2" required><input type="button"
											value="우편번호 찾기" class="zip_btn">
									</p>


									<p class="box_i">
										<label for="tel1"><strong class="point">*</strong>휴대폰</label><input
											type="tel" id="tel1" title="지역번호 입력" required> - <input
											type="tel" id="tel2" title="전화번호 앞자리" required> - <input
											type="tel" id="tel3" title="전화번호 뒷자리" required>
									</p>
									
									<p class="box_i">
										<label for="tel1"><strong class="point">*</strong>일반전화</label><input
											type="tel" id="tel1" title="지역번호 입력" required> - <input
											type="tel" id="tel2" title="전화번호 앞자리" required> - <input
											type="tel" id="tel3" title="전화번호 뒷자리" required>
									</p>
									<p></p>
								</fieldset>
								
								<fieldset class="join3">
									<legend>결제 방법</legend>
									<p class="text_wrap">
										
									</p>
									<p class="box_i">
										<input type="radio" name="agree" id="chk1" value="1">
										<label for="chk1">신용카드</label>
										<input type="radio" name="agree" id="chk2" value="2">
										<label for="chk2">계좌이체</label>
										<input type="radio" name="agree" id="chk2" value="2">
										<label for="chk2">무통장 입금</label>
										<input type="radio" name="agree" id="chk2" value="2">
										<label for="chk2">휴대폰</label>
										<input type="radio" name="agree" id="chk2" value="2">
										<label for="chk2">카카오페이</label>
										<input type="radio" name="agree" id="chk2" value="2">
										<label for="chk2">PAYCO</label>
									</p>
									<hr/>
									<p>선물 포장
										<input type="radio" name="agree" id="chk1" value="1">
										<label for="chk1">안함</label>
										<input type="radio" name="agree" id="chk2" value="2">
										<label for="chk2">요청</label><span>(1,000원)</span>
									</p>
									<p>영수증
										<input type="radio" name="agree" id="chk1" value="1">
										<label for="chk1">가격표시</label>
										<input type="radio" name="agree" id="chk2" value="2">
										<label for="chk2">가격 표시 안함</label>
									</p>
									<p>택배사 직원에게</p>
									<input	type="text" id="u_id" >
									<p>받는분께 메시지</p>
									<input	type="text" id="u_id" >
									<p>최종 결제금액 <fmt:formatNumber value="${book.priceStandard }"	type="currency" />원</p>
									<span>주문하실 상품, 가격, 배송정보, 할인정보 등을 확인하였으며, 구매에 동의하시겠습니까?</span>
									<input type="checkbox"><p>동의합니다.<span>(전자상거래법 제 8조 제 2항)</span></p>
								</fieldset>
								
								<button id="apibtn">결제 하기</button>
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
	<script>
		$(function() {
			$(".sub1").addClass("active");

			let moveForm = $(".moveForm");

			$(".pageInfo a").on(
					"click",
					function(e) {
						e.preventDefault();
						moveForm.find("input[name = 'page']").val(
								$(this).attr("href"));
						moveForm.submit();

					});

			// 검색 버튼을 누를 시 공백이면 alert
			$("#search_btn").on("click", function(e) {
				let keyword = $("input[name='keyword']").val();
				if (keyword == "") {
					alert("검색어를 입력해주세요.");
				} else {
					$("form").attr("onsubmit", "return true");
					$("form").submit();
				}

			});
			
			/* 결제 */
			$("#apibtn").click(function(){
				$.ajax({
					url:'/buy/book_buy_api',
					dataType:'json',
					success:function(data){

						var box = data.next_redirect_pc_url;
						var name = "credit"
						var option = "width = 500, height = 650, top = 100, left = 200,location = no ";
						window.open(box,name,option);
					},
					error:function(error){
						alert(error);
					}
				});
			});
		});
	</script>

</body>
</html>
