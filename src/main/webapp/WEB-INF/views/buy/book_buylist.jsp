<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>라온도서관 > 나의도서관 > 도서관련 > 구매내역조회</title>
=======
<<<<<<< HEAD
<title>이젠북컴퍼니 > 마이페이지 > 도서관련 > 구매내역조회</title>
=======
<title>라온도서관 > 나의도서관 > 도서관련 > 구매내역조회</title>
>>>>>>> buy
>>>>>>> review
<link rel="stylesheet" href="/resources/css/mylib/sub1/loan_history.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" 
 integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
 crossorigin="anonymous"></script>
</head>
<body>

<<<<<<< HEAD
   <div class="header">
=======
	<div class="header">
>>>>>>> review
    <jsp:include page="../header.jsp"></jsp:include>
    </div>

    <div class="container">
        <div class="sub_title">
            <div class="doc-info">
                <!-- doc title -->
                <div class="doc-title">
                    <h3>구매내역조회</h3>
                    <ul>
                        <!-- 홈 btn img -->
                        <li class="first" style="background-image: none;">
                            <a href="/">
                                <img src="/resources/imges/common/navi_home_icon.gif">
                            </a>
                        </li> 
                        <li>
<<<<<<< HEAD
                            <a href="/mylib/loan-history">나의도서관</a>
=======
<<<<<<< HEAD
                            <a href="/mylib/loan-history">마이페이지</a>
=======
                            <a href="/mylib/loan-history">나의도서관</a>
>>>>>>> buy
>>>>>>> review
                        </li>
                        <li>
                            <a href="/mylib/loan-history">도서관련</a>
                        </li>
                        <li>
                            <a href="/mylib/loan-history">구매내역조회</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="doc">

                <!-- 왼쪽 사이드바 -->
<<<<<<< HEAD
                <jsp:include page="../mylib/lnb.jsp"></jsp:include>
=======
                <jsp:include page="../search/lnb.jsp"></jsp:include>
>>>>>>> review

                <!-- 본문 -->
                <div class="content" style="">
                    <div class="doc">
                        <div class="wrapper-bbs" style="">

                            <!-- 테이블 -->
                            <div class="table-wrap">
<<<<<<< HEAD
                               <c:if test="${not empty buy_history }">
=======
                            	<c:if test="${not empty buy_history }">
>>>>>>> review
                                <table>
                                    <thead>
                                        <tr>
                                            <th style="">도서명</th>
                                            <th style="">저자</th>
                                            <th style="width: 90px;">구매날짜</th>
<<<<<<< HEAD
                                            <th style="width: 90px;">수량</th>
                                            <th style="width: 90px">총 비용</th>
                                            <th style="width: 90px">배송예정일</th>
                                   </tr>
                                    </thead>
                                    <tbody>
                                    
                                       <c:forEach var="buy_history" items="${buy_history}">
                              <tr>
                                 <td>${buy_history.book_title}</td> 
                                 <td>${buy_history.book_author}</td>
                                 <td>${buy_history.buy_date}</td>
                                 <td>${buy_history.bookCount}</td>                     
                                 <td>${buy_history.book_price}</td>                     
                                 <td>${buy_history.return_period}</td>
                                 
                              </tr>
                              </c:forEach>
                                           
=======
                                            <th style="width: 90px">총 비용</th>
                                            <th style="width: 90px">배송예정일</th>
	                                </tr>
                                    </thead>
                                    <tbody>
                                    
	                                    <c:forEach var="buy_history" items="${buy_history}">
										<tr>
											<td>${buy_history.book_title}</td> 
											<td>${buy_history.book_author}</td>
											<td>${buy_history.buy_date}</td>
											<td>${buy_history.book_price}</td>							
											<td>${buy_history.return_period}</td>
											
										</tr>
										</c:forEach>
	                                        
>>>>>>> review
                                    </tbody>
                                </table>
                                
                                <br>
                                
                                <div class="pageInfo" style="">
<<<<<<< HEAD
   
                           <c:if test="${pageMaker.prev }">
                              <a class="not" href="${pageMaker.startPage - 1}">이전</a>
                           </c:if>
                           
                           <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                              <a class="${pageMaker.cri.page == num ? "current":"not" }" href="${num }"><span>${num }</span></a>
                           </c:forEach>
                           
                           <c:if test="${pageMaker.next }">
                              <a class="not" href="${pageMaker.endPage + 1}">다음</a>
                           </c:if>
                        </div>
                        </c:if>
                        
                            </div>
                            
                        </div>
                  <br>
                        <c:if test="${empty buy_history }">
                     <h2>구매한 도서가 없습니다.</h2>
                  </c:if>
=======
	
									<c:if test="${pageMaker.prev }">
										<a class="not" href="${pageMaker.startPage - 1}">이전</a>
									</c:if>
									
									<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
										<a class="${pageMaker.cri.page == num ? "current":"not" }" href="${num }"><span>${num }</span></a>
									</c:forEach>
									
									<c:if test="${pageMaker.next }">
										<a class="not" href="${pageMaker.endPage + 1}">다음</a>
									</c:if>
								</div>
								</c:if>
								
                            </div>
                            
                        </div>
						<br>
                        <c:if test="${empty buy_history }">
							<h2>구매한 도서가 없습니다.</h2>
						</c:if>
>>>>>>> review
                    </div>

                </div>

            </div>
        </div>
    </div>
    
    <form method="get" class="moveForm"> 
<<<<<<< HEAD
      <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
      <input type="hidden" name="page" value="${pageMaker.cri.page }">
   </form>
=======
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="page" value="${pageMaker.cri.page }">
	</form>
>>>>>>> review
    
    <!-- footer -->
    <jsp:include page="../footer.jsp"></jsp:include>


<<<<<<< HEAD
   <script>
      
      $(function() {
         $(".sub8").addClass("active");
         $(".submenu1").addClass("active");
         
         let moveForm = $(".moveForm");
         
         //pageInfo의 a태그를 누르면 a태그의 href 속성을 가져와서 moveForm의 page에 넣고 moveForm이 submit됨
         $(".pageInfo a").on("click", function(e) {
            e.preventDefault();
            moveForm.find("input[name = 'page']").val($(this).attr("href"));
            moveForm.submit();
         });
         
          
      });
      
   </script>   
=======
	<script>
		
		$(function() {
			$(".sub1").addClass("active");
			$(".submenu1").addClass("active");
			
			let moveForm = $(".moveForm");
			
			//pageInfo의 a태그를 누르면 a태그의 href 속성을 가져와서 moveForm의 page에 넣고 moveForm이 submit됨
			$(".pageInfo a").on("click", function(e) {
				e.preventDefault();
				moveForm.find("input[name = 'page']").val($(this).attr("href"));
				moveForm.submit();
			});
			
			 
		});
		
	</script>	
>>>>>>> review


</body>
</html>