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
    <link rel="stylesheet" href="/resources/assets/css/kiosk.css">
    <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
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
<%--            <iframe width="400" height="50"--%>
<%--                    src="https://www.youtube.com/embed/Ton-wNlb0uo?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen ></iframe>--%>
<%--자동재생, 뮤트상태인 유튜브 음악--%>

<%--            <audio autoplay controls>--%>
<%--                <source src="audio/The_Weeknd-I_Feel_It_Coming(cover_byJ.Fla).mp3" type="audio/mp3">--%>
<%--            </audio>--%>
        </div>
        <!-- leftSide 끝 -->
        <!-- rightSide 시작 -->
        <div class="rightSide col-5">
            <div class="mainLogo"></div>
            <form  id="login" method="post">
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
                        <input type="text" id="id" value="" name="id">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <div class="pwInput" >
                        <input type="password" id="password" value="" name="password">
                        <i class="fa-solid fa-key"></i>
                    </div>
                </div>
                <button class="loginBtn btnColor" id="loginBtn" type="button">로그인</button>
                <button class="loginBtn btnBorder" id="registerBtn" type="button">회원가입</button>
            </form>
            <!-- 로그인 폼 -->
        </div>
        <!-- rightSide 끝 -->
    </div>
    <!-- wrapper 끝 -->
   <script src="/resources/assets/js/kiosk.js"></script>
  
    
  <script type="text/javascript">
    
    $("#loginBtn").on("click",function(){
    	
       	 
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    		/* ,dataType:"json" */
    		,url: "/login"
    		/* ,data : $("#formLogin").serialize() */
    		,data : {
    			"id" : $("#id").val(),
    			"password" : $("#password").val()}
    		,success: function(response) {
    			if(response.rt == "success" && $("#customerRadio").prop('checked') ) {
    				alert(response.rtMember.name);
    				location.href = "/userMain";
    			}else if(response.rt == "success" && $("#adminRadio").prop('checked')){
    				alert(response.rtMember.name);
    				location.href = "/indexXdmView";
    			}
    			else {
    				alert("그런 회원 없습니다.");
    			}
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});

// 		$("form[name=register]").attr("action", "/memberXdmList").submit();
// 		$("form[name=register]").attr("method","post");
    });
    	
    $("#registerBtn").on("click",function(){
    	
    	location.href ="/joinForm";
    	
    });
    
    
    </script>
</body>
</html>