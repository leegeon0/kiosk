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
        	<form action="" method="post" name="categoryList">
        	<div class="orderContainerLeft">
                
                <ul class="categoryBox">
                    <li><button class="categoryBtn" id="category1" type="button" value="1">세트 메뉴</button></li>
                    <li><button class="categoryBtn" id="category2" type="button" value="2">식사 메뉴</button></li>
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
        	</form>
            
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
    $(".categoryBtn").on("click",function(){
    	var categoryValue = $(this).val();
    	
      	 
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    		/* ,dataType:"json" */
    		,url: "/menu"
    		/* ,data : $("#formLogin").serialize() */
    		,data : {
    			"category" : categoryValue}
    		,success: function(response) {
    			if(response.rt == "success" && categoryValue == 1 ) {
    				alert(response.rtMenu[1].menuName);
    				
    				
    				
    				
    			}else if(response.rt == "success" && categoryValue == 2 ){
    				alert(response.rtMenu[0].menuName);
    			}
    			else {
    				alert("실패");
    			}
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});

    });

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