<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<jsp:useBean id="OptionMenuServiceImpl" class="com.kiosk.app.infra.optionMenu.OptionMenuServiceImpl"/>

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
        .rate > label:before {display: inline-block;font-size: 4rem;padding: 2.3rem .2rem;margin: 0 5px;cursor: pointer;font-family: FontAwesome;content: "\f005 ";}
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
                        <%-- 		                    <c:choose>
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
                                                    </c:choose> --%>
                    </ul>
                </div>
                <div class="modal_bg"></div>
                <div class="modalLeftBox">
                    <div class="modalBox">
                        <img src="" alt="" id="modalImg">
                        <div class="modal_info">
                            <p><span id="modalName"></span></p>
                            <p style="display : none;"><span id="modalSeq"></span></p>
                            <div class="count_box">
                                <div class="count-wrap _count">
                                    <button type="button" class="minus">-</button>
                                    <input type="text" class="inp" value="1" readonly />
                                    <button type="button" class="plus">+</button>
                                </div>
                            </div>
                            <p><span class="modalPrice" data-menuPrice="" data-changeprice=""></span>원</p>
                            <div class="stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <div class="addOption"><p class="addOptionText"></p><p class="modalTotalPrice"></p></div>                           	</div>
                        <button type="button" id="modalOptionBtn" class="modalOptionBtn btnBorder" value="1">옵션 선택</button>
                        <button class="modalCencelBtn btnBorder">취소하기</button>
                        <button class="modalOrderBtn btnColor">주문하기</button>
                    </div>
                    <div class="modalOptionRightBox">
                        <p>옵션 선택</p>
                        <ul class="modalOptionBox" id="optionList">

                        </ul>
                        <button class="modalOptionCloseBtn btnBorder">
                            닫기
                        </button>
                    </div>
                    <form name="star" method="post">
                        <div class="modalStarRightBox">
                            <p>
                                이전에 이 음식을 드셔보셨다면 별점을 등록해주세요!
                            </p>
                            <div class="stars modalStarBox">
                                <fieldset class="rate fa-solid">
                                    <input type="radio" id="rating10" name="rating" value="5"><label for="rating10" title="5점"></label>
                                    <input type="radio" id="rating8" name="rating" value="4"><label for="rating8" title="4점"></label>
                                    <input type="radio" id="rating6" name="rating" value="3"><label for="rating6" title="3점"></label>
                                    <input type="radio" id="rating4" name="rating" value="2"><label for="rating4" title="2점"></label>
                                    <input type="radio" id="rating2" name="rating" value="1"><label for="rating2" title="1점"></label>
                                </fieldset>
                            </div>
                            <button class="btnColor submitBtn" id="starSubmitBtn" type="button">
                                등록하기
                            </button>
                            <button class="btnBorder closeStarBox" type="button">
                                안 할래요
                            </button>
                        </div>
                    </form>

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
            <form id="likedForm" method="post" action="/orderList">
                <div class="orderList">
                    <ul class="like_box">
                        <li>품명</li>
                        <li>수량</li>
                        <li>금액</li>
                    </ul>
                    <div class="new_contents_container" class="scroll_bar">
                        <ul class="liked">
                            <%--                            <li>--%>
                            <%--                                <ul>--%>
                            <%--                                    <li>소머리국밥</li>--%>
                            <%--                                    <li>--%>
                            <%--                                        <button class="likedMinus">-</button>--%>
                            <%--                                        <span>1</span>--%>
                            <%--                                        <button class="likedPlus">+</button>--%>
                            <%--                                    </li>--%>
                            <%--                                    <li><span>20,000</span>원</li>--%>
                            <%--                                    <li><button><i class="fa-solid fa-xmark"></i></button></li>--%>

                            <%--                                            &lt;%&ndash; +,-버튼과 삭제 버튼은--%>
                            <%--                                            1씩 증감 기능, 삭제기능을 추가하기 전--%>

                            <%--                                            // - 버튼 클릭 이벤트--%>
                            <%--                                            $(".likedMinus").on("click", function (e) {--%>
                            <%--                                                e.preventDefault(); // 기본 동작 막기--%>
                            <%--                                                // 여기에 수행할 작업 추가--%>
                            <%--                                            });--%>

                            <%--                                            // + 버튼 클릭 이벤트--%>
                            <%--                                            $(".likedPlus").on("click", function (e) {--%>
                            <%--                                                e.preventDefault(); // 기본 동작 막기--%>
                            <%--                                                // 여기에 수행할 작업 추가--%>
                            <%--                                            });--%>

                            <%--                                            // 삭제 버튼 클릭 이벤트--%>
                            <%--                                            $(".fa-xmark").parent("button").on("click", function (e) {--%>
                            <%--                                                e.preventDefault(); // 기본 동작 막기--%>
                            <%--                                                // 여기에 수행할 작업 추가--%>
                            <%--                                            });--%>

                            <%--                                                    하면 +,-, 삭제버튼을 눌러도 다음페이지로 안 넘어가는 것같다.--%>
                            <%--                                                });&ndash;%&gt;--%>

                            <%--                                </ul>--%>
                            <%--                            </li>--%>
                        </ul>
                    </div>
                </div>
                <div class="totalPriceBox">
                    <span>총 금액</span>
                    <span>￦<span id="finalPrice"></span>원</span>
                </div>
                <div class="orderBtnBox">
                    <button class="btnColor orderBtn" id="orderBtn" type="submit"><spring:message code="site.orderFirst" text="default text" /></button>
                </div>
            </form>
        </div>
    </div>
</div>



<script src="/resources/assets/js/order.js"></script>
<script src="/resources/assets/js/kiosk.js"></script>
<script>
    $(document).ready(function(){
        var categoryValue = 1;

        // 메뉴 정보와 별점 아이콘을 저장하는 객체 배열
        var menuData = [];

        var starAjax = $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/star",
            data: {"averageStar": 0,
                "category" : categoryValue},
            success: function(response) {
                if (response.rts == "success") {
                    if (response.rtStar.length > 0) {
                        $.each(response.rtStar, function(index, item) {
                            // 메뉴 별 평균 별점 값 가져오기
                            const avgStarValue = parseFloat(item.averageStar);
                            // 최대 별점 개수 (여기서는 5개)
                            const maxStars = 5;
                            // 별 아이콘을 담을 변수
                            let starIcons = '';
                            // 각 별 아이콘을 생성하고 스타일을 적용
                            for (let i = 1; i <= maxStars; i++) {
                                if (i <= avgStarValue) {
                                    starIcons += '<i class="fa-solid fa-star"></i>';
                                } else {
                                    starIcons += '<i class="fa-solid fa-star" style="color: grey;"></i>';
                                }
                            }

                            // 메뉴 정보와 별점 아이콘을 객체에 저장
                            menuData.push({ avgStarIcons: starIcons });
                        });
                        // 메뉴 정보 업데이트
                        updateMenuList();
                    } else {
                        alert("다시해");
                    }
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });

        function updateMenuList() {
            $.ajax({
                async: true,
                cache: false,
                type: "post",
                url: "/menu",
                data: {"category": categoryValue},
                success: function(response1) {
                    if (response1.rt == "success") {
                        var htmlContent = '';
                        if (response1.rtMenu.length > 0) {
                            $.each(response1.rtMenu, function(index, item) {
                                // 해당 메뉴의 별점 아이콘 가져오기
                                var avgStarIcons = menuData[index].avgStarIcons;

                                htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
                                htmlContent += '<img alt="" src="' + item.menuImg + '">';
                                htmlContent += '<div class="menuNames">';
                                htmlContent += '<div class="stars">' + avgStarIcons + '</div>';
                                htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>';
                                htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
                                htmlContent += '<p style="display : none;" class="menuSeq" data-menuSeq="'+ item.seq +'">' + item.seq + '</p>';
                                htmlContent += '</div>';
                                htmlContent += '</li>';
                            });
                        } else {
                            htmlContent = '<p>데이터가 없습니다</p>';
                        }
                        $("#menuList").html(htmlContent);
                    }
                },
                error: function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });
        }
    });




    $(".categoryBtn").on("click",function(){
        var categoryValue = $(this).val();
        $(this).addClass('tab_active');
        $(".categoryBtn").not(this).removeClass("tab_active");

        // 메뉴 정보와 별점 아이콘을 저장하는 객체 배열
        var menuData = [];

        var starAjax = $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/star",
            data: {"averageStar": 0},
            success: function(response) {
                if (response.rts == "success") {
                    if (response.rtStar.length > 0) {
                        $.each(response.rtStar, function(index, item) {
                            // 메뉴 별 평균 별점 값 가져오기
                            const avgStarValue = parseFloat(item.averageStar);
                            // 최대 별점 개수 (여기서는 5개)
                            const maxStars = 5;
                            // 별 아이콘을 담을 변수
                            let starIcons = '';
                            // 각 별 아이콘을 생성하고 스타일을 적용
                            for (let i = 1; i <= maxStars; i++) {
                                if (i <= avgStarValue) {
                                    starIcons += '<i class="fa-solid fa-star"></i>';
                                } else {
                                    starIcons += '<i class="fa-solid fa-star" style="color: grey;"></i>';
                                }
                            }

                            // 메뉴 정보와 별점 아이콘을 객체에 저장
                            menuData.push({ avgStarIcons: starIcons });
                        });
                        // 메뉴 정보 업데이트
                        updateMenuList();
                    }
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });

        function updateMenuList() {
            $.ajax({
                async: true,
                cache: false,
                type: "post",
                url: "/menu",
                data: {"category": categoryValue},
                success: function(response1) {
                    if (response1.rt == "success") {
                        var htmlContent = '';
                        if (response1.rtMenu.length > 0) {
                            $.each(response1.rtMenu, function(index, item) {
                                // 해당 메뉴의 별점 아이콘 가져오기
                                var avgStarIcons = menuData[index].avgStarIcons;

                                htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
                                htmlContent += '<img alt="" src="' + item.menuImg + '">';
                                htmlContent += '<div class="menuNames">';
                                htmlContent += '<div class="stars">' + avgStarIcons + '</div>';
                                htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>';
                                htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
                                htmlContent += '<p style="display : none;" class="menuSeq" data-menuSeq="'+ item.seq +'">' + item.seq + '</p>';
                                htmlContent += '</div>';
                                htmlContent += '</li>';
                            });
                        } else {
                            htmlContent = '<p>데이터가 없습니다!</p>';
                        }
                        $("#menuList").html(htmlContent);
                    }
                },
                error: function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });
        } var menuData = [];

        var starAjax = $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/star",
            data: {"averageStar": 0,
                "category" : categoryValue},
            success: function(response) {
                if (response.rts == "success") {
                    if (response.rtStar.length > 0) {
                        $.each(response.rtStar, function(index, item) {
                            // 메뉴 별 평균 별점 값 가져오기
                            const avgStarValue = parseFloat(item.averageStar);
                            // 최대 별점 개수 (여기서는 5개)
                            const maxStars = 5;
                            // 별 아이콘을 담을 변수
                            let starIcons = '';
                            // 각 별 아이콘을 생성하고 스타일을 적용
                            for (let i = 1; i <= maxStars; i++) {
                                if (i <= avgStarValue) {
                                    starIcons += '<i class="fa-solid fa-star"></i>';
                                } else {
                                    starIcons += '<i class="fa-solid fa-star" style="color: grey;"></i>';
                                }
                            }

                            // 메뉴 정보와 별점 아이콘을 객체에 저장
                            menuData.push({ avgStarIcons: starIcons });
                        });
                        // 메뉴 정보 업데이트
                        updateMenuList();
                    }
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });

        function updateMenuList() {
            $.ajax({
                async: true,
                cache: false,
                type: "post",
                url: "/menu",
                data: {"category": categoryValue},
                success: function(response1) {
                    if (response1.rt == "success") {
                        var htmlContent = '';
                        if (response1.rtMenu.length > 0) {
                            $.each(response1.rtMenu, function(index, item) {
                                // 해당 메뉴의 별점 아이콘 가져오기
                                var avgStarIcons = menuData[index].avgStarIcons;

                                htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
                                htmlContent += '<img alt="" src="' + item.menuImg + '">';
                                htmlContent += '<div class="menuNames">';
                                htmlContent += '<div class="stars">' + avgStarIcons + '</div>';
                                htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>';
                                htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
                                htmlContent += '<p style="display : none;" class="menuSeq" data-menuSeq="'+ item.seq +'">' + item.seq + '</p>';
                                htmlContent += '</div>';
                                htmlContent += '</li>';
                            });
                        } else {
                            htmlContent = '<p>데이터가 없습니다!</p>';
                        }
                        $("#menuList").html(htmlContent);
                    }
                },
                error: function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });
        }



        updateMenuList();
    });









    // $.ajax({
    // 	async: true
    // 	,cache: false
    // 	,type: "post"
    //
    // 	,url: "/menu"
    //
    // 	,data : {
    // 		"category" : categoryValue}
    // 	,success: function(response) {
    //
    // 		for(i=1; i<=4; i++) {
    // 			if(response.rt == "success" && categoryValue == i) {
    // 				 var htmlContent = '';
    // 			      if (response.rtMenu.length > 0) {
    // 			        $.each(response.rtMenu, function(index, item) {
    // 			          htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
    // 			          htmlContent += '<img alt="" src="' + item.menuImg + '">';
    // 			          htmlContent += '<div class="menuNames">';
    // 			          htmlContent += '<div class="stars">';
    // 			          htmlContent += '<i class="fa-solid fa-star"></i>';
    // 			          htmlContent += '<i class="fa-solid fa-star"></i>';
    // 			          htmlContent += '<i class="fa-solid fa-star"></i>';
    // 			          htmlContent += '<i class="fa-solid fa-star"></i>';
    // 			          htmlContent += '<i class="fa-solid fa-star"></i>';
    // 			          htmlContent += '</div>';
    // 			          htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>';
    // 			          htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
    // 			          htmlContent += '<p style="display : none;" class="menuSeq" data-menuSeq="'+ item.seq +'">' + item.seq + '</p>';
    // 			          htmlContent += '</li>';
    //
    //
    //
    // 			        });
    // 			      } else {
    // 			        htmlContent = '<p>데이터가 없습니다!</p>';
    // 			      }
    // 			       $("#menuList").html(htmlContent);
    //
    // 			} else {
    // 				/* by pass */
    // 			}
    //
    // 		}
    // 	}
    // 	,error : function(jqXHR, textStatus, errorThrown){
    // 		alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    // 	}
    // });


    /* 옵션 출력 ajax  */
    var optionDelNyValue = 1;
    var optionAjax = $.ajax({
        async: false,
        cache: false,
        type: "post",
        url: "/option",
        data: {
            "optionDelNy" : optionDelNyValue},
        success: function (response) {
            if (response.rt == "success") {
                // Ajax 요청이 성공하고 조건을 만족할 때
                var optionList = response.rtOption; // 여기서 response.list는 서버에서 받은 리스트 데이터입니다.
                var modalOptionBox = $("#optionList"); // <ul> 엘리먼트

                // 리스트 데이터가 비어있을 경우 "There is no data!" 출력
                if (optionList.length == 0) {
                    modalOptionBox.append('<p>There is no data!</p>');
                } else {
                    // 리스트 데이터가 비어있지 않은 경우 각 아이템을 출력
                    optionList.forEach(function (item) {
                        if (item.optionDelNy == null) {
                            var listItem =
                                '<li class="selectOption">' +
                                '<div class="optionConts">' +
                                '<img alt="메뉴사진" src="' + item.optionImg + '">' +
                                '<div>' +
                                '<p class="optionName" data-optionName="' + item.optionName + '">' + item.optionName + '</p>' +
                                '<p class="optionPrice" data-optionPrice="' + item.optionPrice + '">' + item.optionPrice + '</p>' +
                                '</div>' +
                                '</div>' +
                                '</li>';
                            modalOptionBox.append(listItem);
                        }
                    });
                }
            } else {
                // 조건을 만족하지 않는 경우에 대한 처리
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
        }
    });



    /* 옵션 출력 ajax */

    /* 모달창 선택 총 금액 출력하기 */
    var modalTotalPrice = $(".modalTotalPrice");
    /* 모달창 선택 총 금액 출력하기 */


    $("#menuList").on("click", "li", function () {
        var menuImg = $(this).find("img").attr("src");
        var menuPrice = $(this).find(".menuPrice").attr("data-menuPrice");
        var menuName = $(this).find(".menuName").attr("data-menuName");
        var modalPrice = $(".modalPrice").data("menuprice");
        var menuSeq = $(this).find(".menuSeq").attr("data-menuSeq");
        var modalSeq = $(".modalSeq").data("menuSeq");
        var totalPriceText = "총 " + menuPrice + "원";




        // 평균 별점 값을 가져오기
        var avgStarIcons = $(this).find(".stars").html();



        $(".modalLeftBox,.modal_bg").fadeIn();
        $("#modalImg").attr("src", menuImg);
        $(".modalPrice").text(menuPrice);
        modalPrice = $(".modalPrice").attr("data-menuprice" ,menuPrice);
        $(".modalPrice").attr("data-changeprice", menuPrice.replace(',',""));
        modalTotalPrice.text(totalPriceText);
        $("#modalName").text(menuName);
        $("#modalSeq").text(menuSeq);



        // 모달 창 내의 별점 엘리먼트에 데이터 삽입
        $(".modalBox .stars").html(avgStarIcons);
    });

    $(".modalCencelBtn,.modal_bg,.modalOrderBtn").click(function(){
        $(".modalLeftBox,.modal_bg").fadeOut();
        $(".modalLeftBox").css('width','650px');
        $(".modalOptionRightBox").css('display','none');
        $(".modalStarRightBox").css('display','none');
        $(".modalOptionBtn").css('display','block').text("옵션선택");
        var resetOption = optionAjax.responseJSON.rtOption;
        var optionPrice = document.querySelectorAll(".optionPrice");
        resetOption.forEach((e,i)=>{
            optionPrice[i].innerText = resetOption[i].optionPrice;
        });
        setTimeout(function(){
            $('.inp').val(1);
            var	addOptionText ="";
            $(".addOptionText").text("");
            /* $(".modalTotalPrice").text(""); */
        },500);
    });


    $(".modalOrderBtn").on("click", function () {
        // 선택한 메뉴 정보 가져오기
        var menuName = $("#modalName").text();
        var quantity = $(".inp").val();
        var menuPrice = $(".modalPrice").attr("data-menuPrice");


        // 금액을 숫자로 파싱하고 수량과 곱하여 총 가격 계산
        var totalPrice = parseFloat(menuPrice.replace(',', '')) * parseInt(quantity);

        // 새로운 리스트 아이템 생성
        var $li = $("<li></li>");

        // 리스트 아이템 내부에 ul 및 li 엘리먼트 추가
        $li.append('<ul><li>' + menuName + '</li><li><button class="likedMinus" type="button">-</button><span>' + quantity + '</span><button class="likedPlus" type="button">+</button></li><li><span>' + totalPrice.toLocaleString() + '원</span></li><li><button type="button"><i class="fa-solid fa-xmark"></i></button></li></ul>');

        // 리스트 아이템을 ul 엘리먼트에 추가
        $("ul.liked").append($li);

        // 총 가격 업데이트
        updateTotalPrice2();

        // 모달 창 닫기
        $(".modalLeftBox, .modal_bg").fadeOut();
    });

    $("ul.liked").on("click", "li button .fa-xmark", function (e) {
        e.preventDefault(); // 기본 동작 막기
        $(this).closest("ul").remove();
        updateTotalPrice2();
    });





    // 각 메뉴의 총 가격을 업데이트하는 함수
    function updateMenuItemTotal($li) {
        var $quantity = $li.find("span").eq(0); // 수량 엘리먼트
        var $price = $li.find("span").eq(1); // 가격 엘리먼트
        var currentQuantity = parseInt($quantity.text().trim(), 10); // 현재 수량
        var menuPrice = parseFloat($price.attr("data-menu-price").replace(',', '')); // 메뉴 가격

        if (!isNaN(currentQuantity)) {
            var menuTotal = currentQuantity * menuPrice;
            $price.text(menuTotal.toLocaleString() + '원');
            $li.attr("data-menu-total", menuTotal); // 데이터 속성으로 메뉴 총 가격 저장
        }
    }










    // "+" 버튼 클릭 이벤트
    $("ul.liked").on("click", "li button.likedPlus", function (e) {
        e.preventDefault(); // 기본 동작 막기

        // 클릭한 "+" 버튼의 부모 li 요소 찾기
        var $li = $(this).closest("li");

        // 해당 메뉴 아이템의 수량 엘리먼트를 찾기
        var $quantity = $li.find("span").eq(0); // 첫 번째 <span> 엘리먼트 선택

        // 현재 수량 가져오기
        var currentQuantity = parseInt($quantity.text().trim(), 10); // 숫자로 파싱, 기본값 10

        // 수량 증가
        if (!isNaN(currentQuantity)) {
            currentQuantity += 1;

            // 변경된 수량을 업데이트
            $quantity.text(currentQuantity);

            // 메뉴의 총 가격 업데이트
            updateMenuItemTotal($li);

            // 총 가격 업데이트
            updateTotalPrice2();
        }
    });

    // "-" 버튼 클릭 이벤트
    $("ul.liked").on("click", "li button.likedMinus", function (e) {
        e.preventDefault(); // 기본 동작 막기

        // 클릭한 "-" 버튼의 부모 li 요소 찾기
        var $li = $(this).closest("li");

        // 해당 메뉴 아이템의 수량 엘리먼트를 찾기
        var $quantity = $li.find("span").eq(0); // 첫 번째 <span> 엘리먼트 선택

        // 현재 수량 가져오기
        var currentQuantity = parseInt($quantity.text().trim(), 10); // 숫자로 파싱, 기본값 10

        // 수량 감소
        if (!isNaN(currentQuantity) && currentQuantity > 1) {
            currentQuantity -= 1;

            // 변경된 수량을 업데이트
            $quantity.text(currentQuantity);

            // 메뉴의 총 가격 업데이트
            updateMenuItemTotal($li);

            // 총 가격 업데이트
            updateTotalPrice2();
        }
    });
















    //장바구니 총 가격 표시
    function updateTotalPrice2() {
        var total = 0;
        $("ul.liked ul li:nth-child(3) span").each(function () {
            var priceText = $(this).text();
            // "￦"와 "원" 문자를 제거하고 숫자만 추출
            var price = parseInt(priceText.replace(/[^0-9]/g, ""), 10);
            total += price;
        });

        // 총 가격 업데이트
        var formattedTotal = total.toLocaleString();
        $("#finalPrice").text(formattedTotal); // finalPrice 요소에 총 가격 표시
    }
    // 초기 총 가격 업데이트
    updateTotalPrice2();




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