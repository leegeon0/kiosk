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
            var modalPrice = $('#modalPrice');
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
            
            modalPrice.text(15000*num)
            console.log(modalPrice.text())
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
});