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
    <title>주문확인 페이지</title>

    <!-- 구글 Noto Sans 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- 구글 Noto Sans 폰트 -->

    <!-- 부트스트랩 CDN & JQuery CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../../resources/assets/css/kiosk.css">
    <script src="../../../../resources/assets/js/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- 부트스트랩 CDN & JQuery CDN -->

</head>
<body>
    <!-- wrapper 시작 -->
    <div class="wrapper row">
        <!-- leftSide 시작 -->
        <div class="leftSide col-7">
            <h4>주문 확인</h4>
            <div class="tableWrapper">
                <table class="finalOrderList">
                    <thead>
                        <tr>
                            <th class="stuff">품명</th>
                            <th class="quantity">수량</th>
                            <th class="amount">금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="stuff">소머리 국밥</td>
                            <td class="quantity">1</td>
                            <td class="amount">20,000</td>
                        </tr>
                        <tr>
                            <td class="stuff">순대 국밥</td>
                            <td class="quantity">1</td>
                            <td class="amount">15,000</td>
                        </tr>
                        <tr class="option">
                            <td class="stuff">공기밥</td>
                            <td class="quantity">1</td>
                            <td class="amount">1,000</td>
                        </tr>
                        <tr class="option">
                            <td class="stuff">순대 추가</td>
                            <td class="quantity">1</td>
                            <td class="amount">3,000</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>￦39,000 원</td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <!-- leftSide 끝 -->
        <!-- rightSide 시작 -->
        <div class="rightSide col-5">
            <div class="payBtnBox">
                <button class="btnBorder payBtn">적립 / 결제하기</button>
                <button class="btnBorder editMenuBtn">메뉴 추가하기</button>
                <button class="btnBorder reOrderBtn">다시 주문하기</button>
            </div>
        </div>
        <!-- rightSide 끝 -->
    </div>
    <!-- wrapper 끝 -->
</body>
</html>