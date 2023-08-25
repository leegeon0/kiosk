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

    <script src="https://www.youtube.com/iframe_api"></script>
<%--    유튜브api를 사용--%>
</head>
<body>
    <!-- wrapper 시작 -->
    <div class="wrapper row">
        <!-- leftSide 시작 -->
        <div class="leftSide col-7">
            <h4>행사 일정</h4>
            <div class="calendar">

            </div>
            <button class="musicBtn btnBorder" id="playMusicBtn">
                매장 음악
            </button>
            <div class="musicContainer"></div>
<%--            <div class="musicBtn">--%>
<%--&lt;%&ndash;                <iframe width="400" height="50"&ndash;%&gt;--%>
<%--&lt;%&ndash;                        src="https://www.youtube.com/embed/Ton-wNlb0uo?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen ></iframe>&ndash;%&gt;--%>
<%--&lt;%&ndash;                &lt;%&ndash;자동재생, 뮤트상태인 유튜브 음악&ndash;%&gt;&ndash;%&gt;--%>
<%--            </div>--%>


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





    const playButton = document.getElementById('playMusicBtn');
    const musicContainer = document.querySelector('.musicContainer');
    let isPlaying = false;

    playButton.addEventListener('click', () => {
        if (!isPlaying) {
            const youtubeIframe = document.createElement('iframe');
            youtubeIframe.width = '1';
            youtubeIframe.height = '1';
            youtubeIframe.src = 'https://www.youtube.com/embed/Ton-wNlb0uo?autoplay=1';
            youtubeIframe.title = 'YouTube 동영상 플레이어';
            youtubeIframe.frameBorder = '0';
            youtubeIframe.allow = 'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share';
            youtubeIframe.allowFullscreen = true;
            youtubeIframe.id = 'youtubeIframe';

            musicContainer.appendChild(youtubeIframe);
            isPlaying = true;
            playButton.textContent = '매장 음악 멈춤';
        } else {
            const youtubeIframe = document.getElementById('youtubeIframe');
            youtubeIframe.remove();
            isPlaying = false;
            playButton.textContent = '매장 음악';
        }
    });




    // // Load the YouTube IFrame API
    // const tag = document.createElement('script');
    // tag.src = 'https://www.youtube.com/iframe_api';
    // const firstScriptTag = document.getElementsByTagName('script')[0];
    // firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
    //
    // let player; // YouTube player instance
    //
    // function onYouTubeIframeAPIReady() {
    //     player = new YT.Player('youtubeIframe', {
    //         height: '1',
    //         width: '1',
    //         videoId: 'Ton-wNlb0uo',
    //         playerVars: {
    //             'autoplay': 0,
    //             'controls': 0,
    //             'rel': 0,
    //             'enablejsapi': 1
    //         },
    //         events: {
    //             'onStateChange': onPlayerStateChange
    //         }
    //     });
    // }
    //
    // function onPlayerStateChange(event) {
    //     const playButton = document.getElementById('playMusicBtn');
    //
    //     if (event.data === YT.PlayerState.PLAYING) {
    //         playButton.textContent = "매장음악 끄기"; // 재생 중일 때 문구 변경
    //     } else if (event.data === YT.PlayerState.PAUSED || event.data === YT.PlayerState.ENDED) {
    //         playButton.textContent = "매장 음악"; // 일시정지 또는 종료 상태일 때 문구 변경
    //     }
    // }
    //
    // document.getElementById('playMusicBtn').addEventListener('click', function() {
    //     if (player) {
    //         if (player.getPlayerState() === YT.PlayerState.PLAYING) {
    //             player.pauseVideo();
    //         } else {
    //             player.playVideo();
    //         }
    //     }
    // });


















  </script>
</body>
</html>