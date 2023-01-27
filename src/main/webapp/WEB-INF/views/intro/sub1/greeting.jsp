<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<<<<<<< HEAD
<title>이젠북컴퍼니 > 회사소개 > 인사말</title>
=======
<title>라온도서관 > 도서관소개 > 인사말</title>
>>>>>>> buy
=======
<title>라온도서관 > 도서관소개 > 인사말</title>
>>>>>>> front
<link rel="stylesheet" href="/resources/css/intro/greeting.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" 
 integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
 crossorigin="anonymous"></script>
</head>
<body>

    <div class="header">
    <jsp:include page="../../header.jsp"></jsp:include>
    </div>

    <div class="container">
        <div class="sub_title">
            <div class="doc-info">
                <!-- doc title -->
                <div class="doc-title">
                    <h3>인사말</h3>
                    <ul>
                        <!-- 홈 btn img -->
                        <li class="first" style="background-image: none;">
                            <a href="/">
                                <img src="/resources/imges/common/navi_home_icon.gif">
                            </a>
                        </li>
                        <li>
<<<<<<< HEAD
<<<<<<< HEAD
                            <a href="/intro/greeting">회사소개</a>
=======
                            <a href="/intro/greeting">도서관소개</a>
>>>>>>> buy
=======
                            <a href="/intro/greeting">도서관소개</a>
>>>>>>> front
                        </li>
                        <li>
                            <a href="/intro/greeting">인사말</a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
        <div class="section">
            <div class="doc">

                <!-- 왼쪽 사이드바 -->
                <jsp:include page="../lnb.jsp"></jsp:include>

                <!-- 본문 -->
                <div class="content">
                    <div class="doc">
                        <div class="wrapper-bbs">
                            <div class="int-img">
                                <div class="int-img-box">
<<<<<<< HEAD
<<<<<<< HEAD
                                    <h2>이젠북컴퍼니 홈페이지 방문을 환영합니다.</h2>
                                    <p> 책 없는 방은 영혼 없는 육체와 같다 <br> - 키케로 -</p>
=======
                                    <h2>라온도서관 홈페이지 방문을 환영합니다.</h2>
                                    <p>- 4차 산업혁명의 시대, 책과 평생학습은 이 시대를 살아가는데 필수입니다. -</p>
>>>>>>> buy
=======
                                    <h2>라온도서관 홈페이지 방문을 환영합니다.</h2>
                                    <p>- 4차 산업혁명의 시대, 책과 평생학습은 이 시대를 살아가는데 필수입니다. -</p>
>>>>>>> front
                                </div>
                            </div>  
                            <div class="greeting">
	                            <br>
<<<<<<< HEAD
<<<<<<< HEAD
	                            <p>이젠북컴퍼니에 오신 것을 진심으로 환영합니다.</p><br>
	                            <p>이젠북컴퍼니는 국내 최초로 도서 대여 시스템과 구매 시스템가 모두 가능한 혁신적인 도서 쇼핑몰입니다.</p><br>
	                            <p>앞으로도 양질의 도서 문화를 제공할 수 있도록 노력하겠습니다.</p><br>
	                            <p>감사합니다.</p><br>
=======
=======
>>>>>>> front
	                            <p>안녕하십니까? 라온도서관에 오신 것을 진심으로 환영합니다.</p><br>
	                            <p>라온도서관은 영남인재교육원에서 국비교육을 수강하면서 함께 팀을 이루어 팀프로젝트로 만든 도서관 홈페이지입니다.</p><br>
	                            <p>앞으로 더욱 더 좋은 개발을 하도록 노력하겠습니다.</p><br>
	                            <p>감사합니다.</p><br>
	                            
	                            <p>조장 : 박준모</p>
	                            <p>조원 : 김혜인, 신혜리, 장준화, 천종부</p>
<<<<<<< HEAD
>>>>>>> buy
=======
>>>>>>> front
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <jsp:include page="../../footer.jsp"></jsp:include>
    <script>
        $(function () {
            $(".sub1").addClass("active");
        });

    </script>

</body>
</html>