<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/order.css">
    <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/9ba187d4f0.js" crossorigin="anonymous"></script>

</head>

<body>
    <div class="wrapper">
        <!-- <button class="btnColor btnBorder btn">
            와라랄
        </button> -->
        <div class="left">
            <div class="orderContainerLeft">
                
                <ul class="categoryBox">
                    <li><a href="#tab1-1">세트 메뉴</a></li>
                    <li><a href="#tab1-2">식사 메뉴</a></li>
                    <li><a href="#tab1-3">사이드 메뉴</a></li>
                    <li><a href="#tab1-4">주류/음료</a></li>
                </ul>
                
                <div class="menuBox">
                    <div id="tab1-1" class="tab_content1">
                        <ul class="tab_c_arti1">
                    <c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<p>There is no data!</p>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status">
							   <li class="popup_btn">
							   		<a href="#">
                           				<img alt="" src="<c:out value="${list.menuImg}"></c:out>">     
                                		<div class="menuName">
                                    		<div class="stars">
                                        		<i class="fa-solid fa-star"></i>
		                                        <i class="fa-solid fa-star"></i>
		                                        <i class="fa-solid fa-star"></i>
		                                        <i class="fa-solid fa-star"></i>
		                                        <i class="fa-solid fa-star"></i>
                                    		</div>
		                                	<c:out value="${list.menuName}"></c:out><br>
		                                	<c:out value="${list.menuPrice}"></c:out>
                                		</div>
                            		</a>
                            	</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- 	
                            <li class="popup_btn"><a href="#">
                                <img src="/resources/assets/img/국밥1.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>수육 국밥 정식</p>
                                    <p>10,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥2.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>해장국 정식</p>
                                    <p>10,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥3.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>나주 곰탕 정식</p>
                                    <p>10,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/갈비탕.JPG" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>갈비탕 정식</p>
                                    <p>10,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥5.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>순대국밥 정식</p>
                                    <p>10,000</p>
                                </div>
                            </a></li>
                            
                            <li><a href="#">
                                <img src="/resources/assets/img/콩나물국밥.JPG" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>콩나물국밥 정식</p>
                                    <p>10,000</p>
                                </div>
                            </a></li>
                             -->
                            <div class="modal_bg"></div>
                            	<div class="modalLeftBox">
                                	<div class="modalBox">
                                    	<img src="/resources/assets/img/국밥1.jpg" alt="">
                                    	<div class="modal_info">
                                        	<p>순대 국밥</p>
                                        	<div class="count_box">
                                            	<div class="count-wrap _count">
                                                	<button type="button" class="minus">-</button>
                                                	<input type="text" class="inp" value="1" />
                                                	<button type="button" class="plus">+</button>
                                            	</div>
                                        	</div>
	                                        <div class="stars">
	                                            <i class="fa-solid fa-star"></i>
	                                            <i class="fa-solid fa-star"></i>
	                                            <i class="fa-solid fa-star"></i>
	                                            <i class="fa-solid fa-star"></i>
	                                            <i class="fa-solid fa-star"></i>
	                                        </div>
                                        	<p><span id="modalPrice">15,000</span>원</p>
                                    	</div> 
	                                    <button class="modalOptionBtn btnBorder">옵션 선택</button>
	                                    <button class="modalCencelBtn btnBorder">취소하기</button>
	                                    <button class="modalOrderBtn btnColor">주문하기</button>
                                	</div>    
                                <div class="modalOptionRightBox">
                                    <p>옵션 선택</p>
                                    <ul class="modalOptionBox">
                                        <li><a href="#">
                                            <img src="/resources/assets/img/공기밥.png" alt="">
                                            <p>공기밥</p>
                                            <p>1,000원</p>
                                        </a></li>
                                        <li><a href="#">
                                            <img src="/resources/assets/img/순대.png" alt="">
                                            <p>순대</p>
                                            <p>3,000원</p>
                                        </a></li>
                                        <li><a href="#">
                                            <img src="" alt="">
                                            <p>냠</p>
                                            <p>1,000원</p>
                                        </a></li>
                                        <li><a href="#">
                                            <img src="" alt="">
                                            <p>냠</p>
                                            <p>1,000원</p>
                                        </a></li>
                                        <li><a href="#">
                                            <img src="" alt="">
                                            <p>냠</p>
                                            <p>1,000원</p>
                                        </a></li>
                                        <li><a href="#">
                                            <img src="" alt="">
                                            <p>냠</p>
                                            <p>1,000원</p>
                                    </ul>
                                    <button class="modalOptionCloseBtn btnBorder">
                                        닫기
                                    </button>
                                </div>
                                <div class="modalStarRightBox">
                                    <p>이전에 이 음식을 드셔보셨다면 별점을 등록해주세요!
                                    </p>
                                    <div class="stars modalStarBox">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <button class="btnColor submitBtn">
                                        등록하기
                                    </button>
                                    <button class="btnBorder closeStarBox">
                                        안 할래요
                                    </button>
                                </div>
                            </div>
                        </ul>
                    </div>
                    <div id="tab1-2" class="tab_content1">
                        <ul class="tab_c_arti1">
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥1.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>수육 국밥</p>
                                    <p>8,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥2.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>해장국</p>
                                    <p>8,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥3.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>나주 곰탕</p>
                                    <p>8,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥4.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>갈비탕</p>
                                    <p>8,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥5.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>황태 해장국</p>
                                    <p>8,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥8.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>콩나물 국밥</p>
                                    <p>8,000</p>
                                </div>
                            </a></li>
                        </ul>
                    </div>
                    <div id="tab1-3" class="tab_content1">
                        <ul class="tab_c_arti1">
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥1.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>어린이 돈까스</p>
                                    <p>6,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥2.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>파전</p>
                                    <p>6,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥3.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>김치전</p>
                                    <p>6,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥4.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p></p>
                                    <p>30,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥5.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p></p>
                                    <p>30,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥8.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p></p>
                                    <p>30,000</p>
                                </div>
                            </a></li>
                        </ul>
                    </div>
                    <div id="tab1-4" class="tab_content1">
                        <ul class="tab_c_arti1">
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥1.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>콜라</p>
                                    <p>1,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥2.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>사이다</p>
                                    <p>1,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥3.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>환타</p>
                                    <p>1,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥4.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>소주</p>
                                    <p>3,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥5.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>맥주</p>
                                    <p>3,000</p>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <img src="/resources/assets/img/국밥8.jpg" alt="">
                                <div class="menuName">
                                    <div class="stars">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>막걸리</p>
                                    <p>3,000</p>
                                </div>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>






        <div class="orderContainer">
            <div class="orderContainerRight">
                <div class="countTimeBox">
                    <span>자동 종료 시간</span>
                    <span><span>120</span>초</span>
                </div>
                <div class="orderList">
                    <ul class="like_box">
                        <li>품명</li>
                        <li>수량</li>
                        <li>금액</li>
                    </ul>
                    <!-- <div id="nothing">
                        <i class="fa-solid fa-utensils"></i>
                        <p>메뉴를 선택해주세요.</p>
                    </div> -->
                    <div class="new_contents_container" class="scroll_bar">
                        <ul class="liked">
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>소머리국밥</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>콩나물국밥 정식</li>
                                    <li>
                                        <button class="likedMinus">-</button>
                                        <span>1</span>
                                        <button class="likedPlus">+</button>
                                    </li>
                                    <li><span>20,000</span>원</li>
                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="totalPriceBox">
                    <span>총 금액</span>
                    <span>￦<span>39,000</span>원</span>
                </div>
                <div class="orderBtnBox">
                    <button class="btnBorder cencelBtn">취소하기</button>
                    <button class="btnColor orderBtn" id="orderBtn">주문하기</button>
                </div>
            </div>
        </div>
    </div>

    
    
    <script src="/resources/assets/js/order.js"></script>
    <script src="/resources/assets/js/kiosk.js"></script>
    <script>


    </script>
</body>

</html>





<!-- 
    <fieldset class="rate">
                                    <input type="radio" id="rating10" name="rating" value="10"><label for="rating10" title="5점"></label>
                                    <input type="radio" id="rating9" name="rating" value="9"><label class="half" for="rating9" title="4.5점"></label>
                                    <input type="radio" id="rating8" name="rating" value="8"><label for="rating8" title="4점"></label>
                                    <input type="radio" id="rating7" name="rating" value="7"><label class="half" for="rating7" title="3.5점"></label>
                                    <input type="radio" id="rating6" name="rating" value="6"><label for="rating6" title="3점"></label>
                                    <input type="radio" id="rating5" name="rating" value="5"><label class="half" for="rating5" title="2.5점"></label>
                                    <input type="radio" id="rating4" name="rating" value="4"><label for="rating4" title="2점"></label>
                                    <input type="radio" id="rating3" name="rating" value="3"><label class="half" for="rating3" title="1.5점"></label>
                                    <input type="radio" id="rating2" name="rating" value="2"><label for="rating2" title="1점"></label>
                                    <input type="radio" id="rating1" name="rating" value="1"><label class="half" for="rating1" title="0.5점"></label>
    
                                </fieldset>
 -->


 <!-- 별점이랑 추가메뉴랑 상호연동되게 할것

-->