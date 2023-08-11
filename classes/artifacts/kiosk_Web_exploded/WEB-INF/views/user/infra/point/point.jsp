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
    <title>Point</title>
    <script src="https://kit.fontawesome.com/9ba187d4f0.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/kiosk.css">
    <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>
    <div class="wrapper">
        <div class="pointContainer">
            <div class="pointBox">
                <h2>적립하기</h2>
                <form method="post" class="phoneNumBox">
                    <input type="tel" name="phoneNumber" id="phoneNumber" value="010-">
                </form>
                <div class="keypad">
                    <button class="num1 btnBorder numberPad">1</button>
                    <button class="num2 btnBorder numberPad">2</button>
                    <button class="num3 btnBorder numberPad">3</button>
                    <button class="num4 btnBorder numberPad">4</button>
                    <button class="num5 btnBorder numberPad">5</button>
                    <button class="num6 btnBorder numberPad">6</button>
                    <button class="num7 btnBorder numberPad">7</button>
                    <button class="num8 btnBorder numberPad">8</button>
                    <button class="num9 btnBorder numberPad">9</button>
                    <button class="cencel btnBorder numberPad">C</button>
                    <button class="num0 btnBorder numberPad">0</button>
                    <button class="enter btnBorder numberPad">적립</button>
                </div>
                <div class="usePayBtn">
                    <button class="skipBtn btnColor">건너뛰기</button>

                </div>
            </div>

        </div>
    </div>



    <script src="/resources/assets/js/kiosk.js"></script>
    <script>

        let phoneNumber = $("#phoneNumber").val();
        if (phoneNumber.length > 8) {
        phoneNumber = phoneNumber.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
        }
        $("#phoneNumber").val(phoneNumber);


        

    </script>
</body>

</html>