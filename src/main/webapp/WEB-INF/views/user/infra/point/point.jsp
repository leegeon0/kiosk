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
    <title>point</title>
    <script src="https://kit.fontawesome.com/9ba187d4f0.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/kiosk.css">
    <link rel="stylesheet" href="/resources/assets/css/point.css">
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
                    <button class="enter btnBorder numberPad" id="enter" type="button">적립</button>

<%--                    <span id="popup_btn">★ READ ME ★</span>--%>
                    <div id="modal_bg"></div>
                    <div id="modal_box">
                        <p>신규 등록</p>
                        <p>등록되지 않은 번호입니다.</p>
                        <p>앞으로 이 번호를 통해 스탬프를 적립할까요?</p>
                        <button id="no">아니오</button>
                        <button id="yes">예</button>
                    </div>
                </div>
                <div class="usePayBtn">
                    <button class="skipBtn btnColor">건너뛰기</button>

                </div>
            </div>

        </div>
    </div>



<%--    <script src="/resources/assets/js/kiosk.js"></script>--%>
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
            var phoneNum = "";
            phoneNum = $("#phoneNumber").val();

            if (phoneNum.length >= 11) {
                // alert(phoneNum);
                $.ajax({
                    type: "POST",
                    url: "/customerInsert",
                    data: {
                        "phoneNum" : phoneNum,
                        "countStamp" : 0
                    },
                    success: function(response) {
                        if(response.rt === "welcomeBack") {
                            // alert("어서 오세요.");
                            location.href = "/countStamp";
                        } else {
                            // alert("신규 고객입니다.");

                            // location.href = "/countStamp";

                            // var redirectURL = "/newSignUp?phoneNumber=" + phoneNum;
                            // window.location.href = redirectURL;

                            $("#modal_bg").fadeIn();
                            $("#modal_box").fadeIn();
                        }
                    },
                    error: function(error) {
                        console.log("오류 발생: " + error);
                    }
                });
            } else {
                alert("11자리의 전화번호를 입력해주세요.");
            }
        });
        // 정상 실행되는 ajax임 지우면 안됨











        // $("#bookmark").on("click", function(){
        //
        //     // if(validation() == false) return false;
        //
        //     $.ajax({
        //         async: true
        //         ,cache: false
        //         ,type: "post"
        //         /* ,dataType:"json" */
        //         ,url: "/userlogin"
        //         /* ,data : $("#formLogin").serialize() */
        //         ,data : { "id_Email" : $("#id_Email").val(),
        //             "password" : $("#password").val()},
        //         success: function(response) {
        //             if(response.rt == "success") {
        //                 // alert(response.rtMemberUser.name + "님 환영합니다.");
        //                 console.log(1);
        //                 console.log(response.rtMemberUser.getPassword);
        //                 location.href = "/main";
        //             } else {
        //                 alert("그런 회원 없습니다.");
        //             }
        //         }
        //         ,error : function(jqXHR, textStatus, errorThrown){
        //             alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
        //         }
        //     });
        // });

        <%--$("#enter").on("click", function(){--%>
        <%--    var phoneNum = "";--%>
        <%--    phoneNum = $("#phoneNumber").val();--%>

        <%--    if (phoneNum.length >= 11) {--%>
        <%--        // alert("전화번호: " + phoneNum + ", 적립: 0");--%>

        <%--        $.ajax({--%>
        <%--            type: "POST",--%>
        <%--            url: "${cpath}/idCheck.do",--%>
        <%--            data: {--%>
        <%--                phoneNum: phoneNum,--%>
        <%--                countStamp: 0--%>
        <%--            },--%>
        <%--            success: function(result) {--%>
        <%--                // console.log("데이터베이스에 삽입되었습니다.");--%>
        <%--                if(result!=0){--%>
        <%--                    alert("기존에 있는 고객입니다.");--%>
        <%--                } else {--%>
        <%--                    alert("신규 고객입니다.");--%>
        <%--                }--%>
        <%--            },--%>
        <%--            error: function(error) {--%>
        <%--                console.error("오류 발생: " + error);--%>
        <%--            }--%>
        <%--        });--%>
        <%--    } else {--%>
        <%--        alert("11자리의 전화번호를 입력해주세요.");--%>
        <%--    }--%>
        <%--});--%>


        $(document).ready(function() {
            // $(".numberPad").click(function() {
            //   var number = $(this).text();
            //   var phoneNumberInput = $("#phoneNumber");
            //   phoneNumberInput.val(phoneNumberInput.val() + number);
            // });



            $(".cencel").click(function() {
                $("#phoneNumber").val("010-"); // 입력 필드 값을 초기화합니다.
            });

            // $(".enter").click(function() {
            //   $("form").submit(); // 폼을 제출합니다.
            // });
        });

        $("#yes").on("click", function() {
            var phoneNum = $("#phoneNumber").val();
            $.ajax({
                type: "POST",
                url: "/customerInsert2",
                data: {
                    "phoneNum": phoneNum,
                    "countStamp": 0
                },
                success: function(response) {
                    if (response.rt === "welcome") {
                        // alert("신규 고객입니다.");
                        location.href = "/payment";
                    }
                },
                error: function(error) {
                    console.log("오류 발생: " + error);
                }
            });
        });


        $("#no").on("click", function() {
            location.href = "/payment";
        });

    </script>

</body>

</html>