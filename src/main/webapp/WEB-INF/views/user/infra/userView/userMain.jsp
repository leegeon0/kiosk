<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>유저 페이지</title>

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
    
    
    <!-- favicon -->
	<link rel="icon" type="image/png" sizes="32x32" href="/resources/assets/img/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/resources/assets/img/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/resources/assets/img/favicon-16x16.png">
	<link rel="manifest" href="/resources/assets/img/manifest.json">

    
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/9ba187d4f0.js" crossorigin="anonymous"></script>
    <!-- 폰트 어썸 -->
</head>
<body>
    <!-- wrapper 시작 -->
    <div class="wrapper row">
        <!-- leftSide 시작 --> 
        <div class="leftSide col-7">
            <div class="ad">
                <div class="qrCode">QR</div>
                광고
            </div>
          
        </div>
        <!-- leftSide 끝 -->
        <!-- rightSide 시작 -->
        <div class="rightSide col-5">
            <div class="date" id="date"></div> 
            <div class="userMainBtn">
                <button class="btnColor eatBtn" id="eatBtn"><spring:message code="site.eat" text="default text" /></button>
                <button class="btnBorder takeoutBtn" id="takeoutBtn"><spring:message code="site.takeOut" text="default text" /></button>
            </div>
            <div class="userMainCircleBtn">
                <div class="voiceBtn">
                    <button class="btnBorder"><i class="fa-solid fa-volume-high"></i></button>
                    <p>음성안내</p>
                </div>
                <div class="languageBtn">
                    <button class="btnColor" id="transBtn"><i class="fa-solid fa-globe"></i></button>
                    <a href="<c:url value="/userMain.do?lang=en" />">English</a><br>
                    <a href="<c:url value="/userMain.do?lang=ko" />">Korean</a>
                </div>
            </div>
        </div>
        <!-- rightSide 끝 -->
    </div>
    <!-- wrapper 끝 -->
    
    <div class="translatedText"></div>
	<script src="/resources/assets/js/kiosk.js"></script>
    <script type="text/javascript">

        
        const date = new Date();
        const year = date.getFullYear();
        let month = date.getMonth()+1;
        let day = date.getDate();
        
        if(month < 10) {
            month = '0' + month;
        }
        if(day < 10) {
            day = '0' + day;
        }


        document.getElementById("date").innerHTML=year + '-' + month + '-' + day;
        

    </script>
</body>
</html>