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
    <title>로그인 페이지</title>

    <!-- 구글 Noto Sans 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- 구글 Noto Sans 폰트 -->

    <!-- 부트스트랩 CDN & JQuery CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/kiosk.css">
    <script src="js/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- 부트스트랩 CDN & JQuery CDN -->

    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/9ba187d4f0.js" crossorigin="anonymous"></script>
    <!-- 폰트 어썸 -->
</head>
<body>
    <!-- wrapper 시작 -->
    <div class="wrapper row">
        <!-- leftSide 시작 -->
        <div class="leftSide col-7">
            <h4>행사 일정</h4>
            <div class="calendar">

            </div>
            <button class="musicBtn btnBorder">
                매장 음악
            </button>
        </div>
        <!-- leftSide 끝 -->
        <!-- rightSide 시작 -->
        <div class="rightSide col-5">
            <div class="mainLogo"></div>
            <form action="">
                <div class="radio">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="radio" id="adminRadio" checked>
                        <label class="form-check-label" for="adminRadio">
                          관리자 화면
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="radio" id="customerRadio">
                        <label class="form-check-label" for="customerRadio">
                          고객 화면
                        </label>
                    </div>
                </div>
                <!-- radio Btn -->
                <div class="inputBox">
                    <div class="idInput">
                        <input type="text">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <div class="pwInput">
                        <input type="password">
                        <i class="fa-solid fa-key"></i>
                    </div>
                </div>
                <button class="loginBtn btnColor">로그인</button>
            </form>
            <!-- 로그인 폼 -->
        </div>
        <!-- rightSide 끝 -->
    </div>
    <!-- wrapper 끝 -->
</body>
</html>