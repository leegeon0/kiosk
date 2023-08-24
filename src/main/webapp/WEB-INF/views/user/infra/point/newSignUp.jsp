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
    <title>newSignUp</title>
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
                <h2>신규 등록</h2>
                <div class="newSignUpBox">
                    <p>등록되지 않은 번호입니다.</p>
                    <p>앞으로 이 번호를 통해 스탬프를 적립할까요?</p>
                    <form method="post" name="form">
                    <button class="btnColor newSignUpNoBtn newSignUpBtn" id="no">아니오</button>
                    <button class="btnBorder newSignUpYesBtn newSignUpBtn" id="yes">예</button>
                    </form>
                </div>
            </div>

        </div>
    </div>



<%--    <script src="/resources/assets/js/kiosk.js"></script>--%>
    <script>



        // $("#yes").on("click",function(){
        //
        //
        //     $("form[name=form]").attr("action","/newSignUp").submit();
        //
        // });


        $("#no").on("click",function(){
            window.location.href = "/payment";
            alert("alert창이 없으면 payment로 넘어가지 않음");
        });



        // $("#yes").on("click", function() {
        //     var phoneNum = $("#phoneNumber").val(); // Get the phone number from the input field
        //
        //     $.ajax({
        //         type: "POST", // Change the request type to POST
        //         url: "/customerInsert2", // Change the URL to match the POST endpoint
        //         data: {
        //             phoneNum: phoneNum,
        //             countStamp: 0
        //         },
        //         success: function(response) {
        //             alert("qwerty");
        //             console.log(response);
        //         },
        //         error: function(error) {
        //             console.log("오류 발생: " + error);
        //         }
        //     });
        // });





    </script>
</body>

</html>