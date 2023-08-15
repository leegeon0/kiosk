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
                <form method="post" class="phoneNumBox" name="num">
                    <input type="tel" name="phoneNumber" id="phoneNumber" value="010-">
                </form>
                <div class="keypad">
                    <button class="num1 btnBorder numberPad" id="1">1</button>
                    <button class="num2 btnBorder numberPad" id="2">2</button>
                    <button class="num3 btnBorder numberPad" id="3">3</button>
                    <button class="num4 btnBorder numberPad" id="4">4</button>
                    <button class="num5 btnBorder numberPad" id="5">5</button>
                    <button class="num6 btnBorder numberPad" id="6">6</button>
                    <button class="num7 btnBorder numberPad" id="7">7</button>
                    <button class="num8 btnBorder numberPad" id="8">8</button>
                    <button class="num9 btnBorder numberPad" id="9">9</button>
                    <button class="cencel btnBorder numberPad" id="cancel">C</button>
                    <button class="num0 btnBorder numberPad" id="0">0</button>
                    <button class="enter btnBorder numberPad" id="enter">적립</button>
                </div>
                <div class="usePayBtn">
                    <button class="skipBtn btnColor">건너뛰기</button>

                </div>
            </div>

        </div>
    </div>



    <script src="/resources/assets/js/kiosk.js"></script>
    <script>

        // let phoneNumber = $("#phoneNumber").val();
        // if (phoneNumber.length > 8) {
        // phoneNumber = phoneNumber.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
        // }
        // $("#phoneNumber").val(phoneNumber);

        // $(document).ready(function() {
        //     $("#phoneNumber").on("input", function() {
        //         let input = $(this).val().replace(/[^0-9]/g, ''); // 숫자 이외의 문자 제거
        //         if (input.length > 11) {
        //             input = input.substr(0, 11); // 11자리 이상이면 11자리까지 자름
        //         }
        //         if (input.length > 8) {
        //             input = input.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
        //         }
        //         $(this).val(input);
        //     });
        // }); // 이코드는 키보드 숫자키로는 되는데 화면의 숫자패드로는 안됨!!

        $(document).ready(function() {
            $("#1,#2,#3,#4,#5,#6,#7,#8,#9,#0").off().on("click", function() {
                let buttonValue = $(this).text();
                let input = $("#phoneNumber").val().replace(/[^0-9]/g, ''); // 숫자 이외의 문자 제거
                let newValue = input + buttonValue;

                if (newValue.length > 11) {
                    newValue = newValue.substr(0, 11); // 11자리 이상이면 11자리까지 자름
                }
                if (newValue.length > 8) {
                    newValue = newValue.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
                }

                $("#phoneNumber").val(newValue);
            });
        });

        // $("#enter").on("click", function(){
        //     alert("233");
        //     $("form[name=num]").attr("action", "/customerInsert").submit();
        // });

        $("#enter").on("click", function(){
            var phoneNum = "";  // 전화번호를 저장할 변수
             phoneNum = $("#phoneNumber").val();  // 입력 필드의 id가 "phoneInput"일 경우

            if (phoneNum !== "") {
                alert("전화번호: " + phoneNum + ", 적립: 0");  // 디버깅용 메시지

                // 서버로 데이터 전송 (Ajax 요청 등)
                $.ajax({
                    type: "POST",  // 요청 방식 (POST, GET 등)
                    url: "/customerInsert",  // 요청할 URL
                    data: {
                        phoneNum: phoneNum,  // 전화번호
                        countStamp: 0  // 적립 초기 값
                    },
                    success: function(response) {
                        // 서버 응답을 처리할 코드
                        console.log("데이터베이스에 삽입되었습니다.");
                    },
                    error: function(error) {
                        // 오류 발생 시 처리할 코드
                        console.error("오류 발생: " + error);
                    }
                });
            } else {
                alert("전화번호를 입력해주세요.");
            }
        });



    </script>

</body>

</html>