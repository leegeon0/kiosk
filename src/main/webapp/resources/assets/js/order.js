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

<<<<<<< HEAD



=======
>>>>>>> branch 'main' of https://github.com/leegeon0/kiosk.git

    $('._count :button').on({
        'click' : function(e){
            e.preventDefault();
            var $count = $(this).parent('._count').find('.inp');
            var now = parseInt($count.val());
            var min = 1;
            var max = 999;
            var num = now;
            var modalPrice = $('#modalPrice');
            var setPrice = modalPrice.attr("data-menuprice").replace(',',"");
/*            var result = parseInt(setPrice);*/
            
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
            
            modalPrice.text(setPrice * num);
            
        }
    });
    
    
        $(".modalCencelBtn,.modal_bg,.modalOrderBtn").click(function(){
        $(".modalLeftBox,.modal_bg").fadeOut();
        $(".modalLeftBox").css('width','650px');
        $(".modalOptionRightBox").css('display','none');
        $(".modalStarRightBox").css('display','none');
        $(".modalOptionBtn").css('display','block');
        $('.inp').val(1);
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

    $(".modalOptionBox li").click(function(){
        $(this).toggleClass('selected');
    });

    $(".closeStarBox").click(function(){
        $(".modalStarRightBox").css('display','none');
        $(".modalLeftBox").css('width','650px');
    });


	$(".modalOrderBtn").on("click",function(){
		console.log(this);
	});
	
	
	
	/*자동 종료시간 카운트 다운*/
	function countDown(e){
		var count = 120; // 시간
		var countTime = setInterval(function() {
			if(count >= 0) {
				$('.countDown').text(count);
				count--;
			} else {
				count = 0;
				clearInterval(countTime)
			}
		},1000);		

	};
	countDown();


});