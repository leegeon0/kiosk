$(function(){
/*    $(".tab_content1").hide();
    $(".tab_content1:first").show();
    
    $(".categoryBox a:first").addClass("tab_active");
    
    $(".categoryBox a").click(function(e){
        e.preventDefault();
        $(".categoryBox a").removeClass("tab_active");
        
        $(this).addClass("tab_active");
        
        $(".tab_content1").hide();
        
        var activeTab = $(this).attr("href");
        console.log(activeTab);
        
        $(activeTab).show();
        
    });*/





    $('._count :button').on({
        'click' : function(e){
            e.preventDefault();
            var $count = $(this).parent('._count').find('.inp');
            var now = parseInt($count.val());
            var min = 1;
            var max = 999;
            var num = now;
            var modalPrice = $('.modalPrice');
         	var setPrice = modalPrice.attr("data-menuprice").replace(',',"");
            if($(this).hasClass('minus')){
                var type = 'm';
            }else{
                var type = 'p';
            }
            if(type=='m'){
                if(now>min){
                    num = now - 1;
                }
            }else{
                if(now<max){
                    num = now + 1;
                }
            }
            if(num != now){
                $count.val(num);
            }
            let countPrice = setPrice * num;
           	modalPrice.text(countPrice.toLocaleString());
        }
    });


    $(".modalOptionBtn").click(function(){
        $(".modalLeftBox").css('width','1200px');
        $(".modalOptionBtn").css('display','none');
        if($(".modalStarRightBox").css('display','block')){
            $(".modalStarRightBox").css('display','none');
            $(".modalOptionRightBox").fadeIn();
        } else {
            $(".modalOptionRightBox").fadeIn();
        }
    });

    $(".modalOptionCloseBtn").click(function(){
        $(".modalOptionRightBox").css('display','none');
        $(".modalOptionBtn").css('display','block');
        $(".modalLeftBox").css('width','650px');
    });

    $(".modal_info .stars").click(function(){
        $(".modalStarRightBox").fadeIn();
        $(".modalLeftBox").css('width','1200px');
        $(".modalOptionBtn").css('display','block');
        if($(".modalOptionRightBox").css('display','block')){
            $(".modalOptionRightBox").css('display','none');
        } else {}
    });

    $(".submitBtn").click(function(){
        $(".modalStarRightBox").css('display','none');
        $(".modalLeftBox").css('width','650px');
    });

    $(".closeStarBox").click(function(){
        $(".modalStarRightBox").css('display','none');
        $(".modalLeftBox").css('width','650px');
    });


	/*$(".modalOrderBtn").on("click",function(){
		console.log(this);
	});*/
	
	/*자동 종료시간 카운트 다운*/
	function countDown(e){
		var count = 120; // 시간
		var countTime = setInterval(function() {
			if(count >= 0) {
				$('.countDown').text(count);
				count--;
			} else {
				count = 0;
				clearInterval(countTime);
				
				/*var link = '/userMain';
   					 window.location.href = link; */ 
			}
		},1000);
		
		document.onmousedown = function clickEvent() {
		var target = window.event;
		
		if(target) {
			count = 120;
		}
	}

	};
	countDown();


	var countNum = 1;
	$(".optionConts").on("click",function(){
		var optionCount = '<div class="d-flex optionCounter">' + '<button type="button" class="optionMinus"> - </button>'
		+ '<p>' + countNum + '</p>' + '<button type="button" class="optionPlus"> + </button>' + '</div>';
			
		$(this).parent(".selectOption").toggleClass("selected");
		
		if($(this).parent(".selectOption").hasClass("selected") === true ) {
			$(this).parent(".selectOption").append(optionCount);
			$(this).addClass("optionContsBackground");
			
			$(".optionConts").each(( i, e ) => {
				console.log(i)
				console.log(e)
				console.log(this)
				console.log($(this).siblings)
				console.log($(this).siblings(".optionCounter"))
				$(this).siblings(".optionCounter").on("click", (button)=> {
										console.log(button.target.classList)
					if(button.target.classList.value === 'optionPlus') {
					countNum++;

					/*e.target.find("p").text(countNum);*/
					/*p.text = countNum;*/
				} else if (button.target.classList.value === 'optionMinus') {
					/*$(this).find("p").text(--countNum);*/
					countNum--;
				}
				})
			});
				
		}	else {
			$(this).siblings().remove();
			$(this).removeClass("optionContsBackground");
		}
	});


	
	setInterval( function() {
		if($(".modalLeftBox").css("display") == "none") {
				$(".selectOption.selected").removeClass("selected");
				$(".optionConts").removeClass("optionContsBackground");
				$(".selectOption").find("div.optionCounter").remove();
				$("#modalOptionBtn").removeClass("btnColor");
        		$("#modalOptionBtn").addClass("btnBorder");
			}
	});
	
    $(".modalOptionCloseBtn").on("click",function(){
	if($(".selectOption").hasClass("selected") === true) {
		$("#modalOptionBtn").text("옵션 수정");
		$("#modalOptionBtn").removeClass("btnBorder");
		$("#modalOptionBtn").addClass("btnColor");
	} else {
		$("#modalOptionBtn").text("옵션 선택");
		$("#modalOptionBtn").removeClass("btnColor");
		$("#modalOptionBtn").addClass("btnBorder");
	}
	});

	
});