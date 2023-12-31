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


<style type="text/css">
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
       .rate { display: inline-block;border: 0;margin-right: 15px;}
.rate > input {display: none;}
.rate > label {float: right;color: #ddd}
.rate > label:before {display: inline-block;font-size: 1rem;padding: .3rem .2rem;margin: 0;cursor: pointer;font-family: FontAwesome;content: "\f005 ";}
.rate .half:before {content: "\f089 "; position: absolute;padding-right: 0;}
.rate input:checked ~ label, 
.rate label:hover,.rate label:hover ~ label { color: #f73c32 !important;  } 
.rate input:checked + .rate label:hover,
.rate input input:checked ~ label:hover,
.rate input:checked ~ .rate label:hover ~ label,  
.rate label:hover ~ input:checked ~ label { color: #f73c32 !important;  } 


</style>
</head>

<body>
    <div class="wrapper">
        <!-- <button class="btnColor btnBorder btn">
            와라랄
        </button> -->
        <div class="left">
        	<div class="orderContainerLeft">
                
                <ul class="categoryBox">
                    <li><button class="categoryBtn btnColor tab_active" id="category1" type="button" value="1">세트 메뉴</button></li>
                    <li><button class="categoryBtn btnColor" id="category2" type="button" value="2">식사 메뉴</button></li>
                    <li><button class="categoryBtn btnColor" id="category3" type="button" value="3">사이드 메뉴</button></li>
                    <li><button class="categoryBtn btnColor" id="category4" type="button" value="4">주류/음료</button></li>
                </ul>
                <!-- 상단 카테고리  -->
                
                <div class="menuBox">
                    <div id="tab1-1" class="tab_content1">
                    	<ul class="tab_c_arti1"  id="menuList">
		                    <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<p>There is no data!</p>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="list" varStatus="status">
										<c:if test="${list.category eq 1}">
										   <li class="popup_btn" data-category="<c:out value="${list.category}" />">
	                           					<img alt="메뉴사진" src="<c:out value="${list.menuImg}"></c:out>">     
		                                    		<div class="stars">
				                                        <i class="fa-solid fa-star"></i>
				                                        <i class="fa-solid fa-star"></i>
				                                        <i class="fa-solid fa-star"></i>
				                                        <i class="fa-solid fa-star"></i>
				                                        <i class="fa-solid fa-star"></i>
		                                    		</div>
				                                	<p class="menuName" data-menuName="<c:out value="${list.menuName}" />"><c:out value="${list.menuName}"></c:out></p><br>
				                                	<p class="menuPrice" data-menuPrice="<c:out value="${list.menuPrice}" />"><c:out value="${list.menuPrice}"></c:out></p><br>
			                            	</li>
			                             </c:if>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					<div class="modal_bg"></div>
                   	<div class="modalLeftBox">
                       	<div class="modalBox">
                           	<img src="" alt="" id="modalImg">
                           	<div class="modal_info">
                               	<p><span id="modalName"></span></p>
                               	<div class="count_box">
                                   	<div class="count-wrap _count">
                                       	<button type="button" class="minus">-</button>
                                       	<input type="text" class="inp" value="1" readonly />
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
                               	<p><span class="modalPrice" data-menuPrice=""></span>원</p>
                           	</div>
                            <button class="modalOptionBtn btnBorder">옵션 선택</button>
                            <button class="modalCencelBtn btnBorder">취소하기</button>
                            <button class="modalOrderBtn btnColor">주문하기</button>
                       	</div>
                       <div class="modalOptionRightBox">
                           <p>옵션 선택</p>
                           <ul class="modalOptionBox">
                               <li>
                           			<a href="#">
                                   		<img src="/resources/assets/img/공기밥.png" alt="">
                                   		<p>공기밥</p>
                                   		<p>1,000원</p>
                               		</a>
                          		</li>
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
                           <p>
                           		이전에 이 음식을 드셔보셨다면 별점을 등록해주세요!
                           </p>
                       <div class="stars modalStarBox">
	                       <fieldset class="rate fa-solid">
	                          <input type="radio" id="rating10" name="rating" value="10"><label for="rating10" title="5점"></label>
	                          <input type="radio" id="rating8" name="rating" value="8"><label for="rating8" title="4점"></label>
	                          <input type="radio" id="rating6" name="rating" value="6"><label for="rating6" title="3점"></label>
	                          <input type="radio" id="rating4" name="rating" value="4"><label for="rating4" title="2점"></label>
	                          <input type="radio" id="rating2" name="rating" value="2"><label for="rating2" title="1점"></label>
	                      </fieldset>
                       </div>
                           <button class="btnColor submitBtn">
                               등록하기
                           </button>
                           <button class="btnBorder closeStarBox">
                               안 할래요
                           </button>
                       </div>
                   </div>
                   </div>
                </div>
            </div>

        <div class="orderContainer">
            <div class="orderContainerRight">
                <div class="countTimeBox">
                    <span>자동 종료 시간</span>
                    <span><span class="countDown">120</span>초</span>
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
                        <!-- <ul class="liked">
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
                        </ul> -->
                    </div>
                </div>
                <div class="totalPriceBox">
                    <span>총 금액</span>
                    <span>￦<span>39,000</span>원</span>
                </div>
                <div class="orderBtnBox">
                    <button class="btnColor orderBtn" id="orderBtn">주문하기</button>
                </div>
            </div>
        </div>
    </div>
	
    
    
    <script src="/resources/assets/js/order.js"></script>
    <script src="/resources/assets/js/kiosk.js"></script>
    <script>
    
	$(document).ready(function(){
    	var categoryValue = 1;    	
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    	
    		,url: "/menu"
    
    		,data : {
    			"category" : categoryValue}
    		,success: function(response) {
    			
    				if(response.rt == "success") {
    					 var htmlContent = '';
	    			      if (response.rtMenu.length > 0) {
	    			        $.each(response.rtMenu, function(index, item) {
	    			          htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
	    			          htmlContent += '<img alt="" src="' + item.menuImg + '">';
	    			          htmlContent += '<div class="menuNames">';
	    			          htmlContent += '<div class="stars">';
	    			          htmlContent += '<i class="fa-solid fa-star"></i>';
	    			          htmlContent += '<i class="fa-solid fa-star"></i>';
	    			          htmlContent += '<i class="fa-solid fa-star"></i>';
	    			          htmlContent += '<i class="fa-solid fa-star"></i>';
	    			          htmlContent += '<i class="fa-solid fa-star"></i>';
	    			          htmlContent += '</div>';
	    			          htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>' + '<br>';
	    			          htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
	    			          htmlContent += '</div>';
	    			          htmlContent += '</li>';
	    			          
	    			         

	    			        });
	    			      } else {
	    			        htmlContent = '<p>데이터가 없습니다!</p>';
	    			      }
	    			       $("#menuList").html(htmlContent);
	    				
    				}
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});

		

	}); 
    
	
		$(".categoryBtn").on("click",function(){
	    	var categoryValue = $(this).val();
	    	$(this).addClass('tab_active');
	    	$(".categoryBtn").not(this).removeClass("tab_active");
	    	
	    	$.ajax({
	    		async: true 
	    		,cache: false
	    		,type: "post"
	    	
	    		,url: "/menu"
	    
	    		,data : {
	    			"category" : categoryValue}
	    		,success: function(response) {
	    			
	    			for(i=1; i<=4; i++) {
	    				if(response.rt == "success" && categoryValue == i) {
	    					 var htmlContent = '';
		    			      if (response.rtMenu.length > 0) {
		    			        $.each(response.rtMenu, function(index, item) {
		    			          htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
		    			          htmlContent += '<img alt="" src="' + item.menuImg + '">';
		    			          htmlContent += '<div class="menuNames">';
		    			          htmlContent += '<div class="stars">';
		    			          htmlContent += '<i class="fa-solid fa-star"></i>';
		    			          htmlContent += '<i class="fa-solid fa-star"></i>';
		    			          htmlContent += '<i class="fa-solid fa-star"></i>';
		    			          htmlContent += '<i class="fa-solid fa-star"></i>';
		    			          htmlContent += '<i class="fa-solid fa-star"></i>';
		    			          htmlContent += '</div>';
		    			          htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>' + '<br>';
		    			          htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
		    			          htmlContent += '</li>';
		    			          

		    			        });
		    			      } else {
		    			        htmlContent = '<p>데이터가 없습니다!</p>';
		    			      }
		    			       $("#menuList").html(htmlContent);
		    				
	    				} else {
	    					/* by pass */
	    				}
	    				
	    			}
	    		}
	    		,error : function(jqXHR, textStatus, errorThrown){
	    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	    		}
	    	});

	    });

		
      	$("#menuList").on("click", "li", function () {  
      	    var menuImg = $(this).find("img").attr("src");
      	    var menuPrice = $(this).find(".menuPrice").attr("data-menuPrice");
      	    var menuName = $(this).find(".menuName").attr("data-menuName");
      	  	var modalPrice = $(".modalPrice").data("menuprice");
      	  	$(".modalLeftBox,.modal_bg").fadeIn();
      	    $("#modalImg").attr("src", menuImg);
      	    $(".modalPrice").text(menuPrice);
      	    $("#modalName").text(menuName);
      	    console.log("menuPrice:", menuPrice);
      	    console.log("menuName:", menuName);
      	  	console.log("menuImg:", menuImg);
      	});

		/* 메뉴 리스트 클릭시 모달창 출력 */
/*       	$("#menuList li").on("click", function () {  
	       	 var menuImg = $(this).find("img").attr("src");
	       	 var menuPrice = $(this).find(".menuPrice").data("menuprice");
	       	 var modalPrice = $("#modalPrice").data("menuprice");
	       	 var menuName = $(this).find(".menuName").data("menuname");
	   		 $(".modalLeftBox,.modal_bg").fadeIn();
	   		 $("#modalImg").attr("src", menuImg);
	   		 $("#modalPrice").text(menuPrice);
   			 modalPrice = $("#modalPrice").attr("data-menuprice" ,menuPrice);
	   		 $("#modalName").text(menuName);
	   	}); */

      	
        $(".modalCencelBtn,.modal_bg,.modalOrderBtn").click(function(){
            $(".modalLeftBox,.modal_bg").fadeOut();
            $(".modalLeftBox").css('width','650px');
            $(".modalOptionRightBox").css('display','none');
            $(".modalStarRightBox").css('display','none');
            $(".modalOptionBtn").css('display','block');
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