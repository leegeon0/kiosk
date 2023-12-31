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
  'click': function (e) {
    e.preventDefault();
    var $count = $(this).parent('._count').find('.inp');
    var now = parseInt($count.val());
    var min = 1;
    var max = 999;
    var num = now;
    var modalPrice = $('.modalPrice');
    var setPrice = modalPrice.attr("data-menuprice").replace(',', "");

    if ($(this).hasClass('minus')) {
      var type = 'm';
    } else {
      var type = 'p';
    }

    if (type == 'm') {
      if (now > min) {
        num = now - 1;
      }
    } else {
      if (now < max) {
        num = now + 1;
      }
    }

    if (num != now) {
      $count.val(num);
    }

    menuQuantity = num; // 메뉴 수량 업데이트

    let countPrice = setPrice * num + optionTotalPrice; // 메뉴 가격 + 옵션 가격
    modalPrice.text(countPrice.toLocaleString());

    $(".modalPrice").attr("data-changeprice", countPrice);
    $(".modalTotalPrice").text("총 " + countPrice.toLocaleString() + "원");
   
    updateTotalPrice();
  }
});




/*
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

            $(".modalPrice").attr("data-changeprice", countPrice);
            $(".modalTotalPrice").text("총 " + countPrice.toLocaleString() + "원")
            var getPrice = modalTotalPrice.text().replace(/[^\d,]+/g, "");
            console.log(getPrice.replace(",",""));
            console.log(num)
        }
    });
*/
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
   
/*   
   var countNum = 1;
   $(".optionConts").on("click",function(a){
      var optionCount = '<div class="d-flex optionCounter">' + '<button type="button" class="optionMinus"> - </button>'
      + '<p>' + countNum + '</p>' + '<button type="button" class="optionPlus"> + </button>' + '</div>';
      $(this).parent(".selectOption").toggleClass("selected");
      
      if($(this).parent(".selectOption").hasClass("selected") === true ) {
         $(this).parent(".selectOption").append(optionCount);
         $(this).addClass("optionContsBackground");

         
            $(".optionMinus").off("click").on("click",function() {
                 var $quantity = $(this).siblings("p");
                 var currentQuantity = parseInt($quantity.text(), 10);
                 var $getOptionPrice = $(this).parent().siblings(".optionConts").find(".optionPrice");
                 var $optionPrice = $getOptionPrice.attr("data-optionPrice").replace(",","");
      
                 if (currentQuantity > 1) {
					 	 currentQuantity--;
                         $quantity.text(currentQuantity);
                         $optionPrice = $optionPrice * parseInt($quantity.text());
                         $getOptionPrice.text($optionPrice.toLocaleString());
                         
                     }
              });
      
              $(".optionPlus").off("click").on("click",function() {
                  var $quantity = $(this).siblings("p");
                  var currentQuantity = parseInt($quantity.text(), 10);
                   var $getOptionPrice = $(this).parent().siblings(".optionConts").find(".optionPrice");
                 var $optionPrice = $getOptionPrice.attr("data-optionPrice").replace(",","");
      
                 if (currentQuantity < 20) {
					 	currentQuantity++;
                         $quantity.text(currentQuantity);
                         $optionPrice = $optionPrice * parseInt($quantity.text());
                         $getOptionPrice.text($optionPrice.toLocaleString());      
                         
                     }
              });

      }   else {
         countNum = 1;
         $(this).siblings().remove();
         $(this).removeClass("optionContsBackground");
         if ( countNum == 1) {
            var resetPrice = $(this).find(".optionPrice").attr("data-optionPrice");
            $(this).find(".optionPrice").text(resetPrice);
         }
         $(".addOptionText").text("");
         $(".modalTotalPrice").text($(".modalTotalPrice").text());
      }
      
      
         var optionLenght = $(".selectOption.selected").length;
         var getPrice = $(".modalPrice").attr("data-changeprice");
		 var getPriceInt = parseInt(getPrice);
         var $getOptionPrice = $(".selectOption.selected").find(".optionPrice").attr("data-optionPrice");
         var $getOptionPriceInt = parseInt($getOptionPrice.replace(",",""));
         var addOptionPrice = (getPriceInt + $getOptionPriceInt).toLocaleString();
         var changePrice = $(".modalTotalPrice").text().replace(/\d+(,\d+)?/, addOptionPrice);
         $(".modalTotalPrice").text(changePrice); 

            if(optionLenght == 1) {
               var addOptionText =" + " + $(".selectOption.selected").find(".optionName").attr("data-optionname");
               $(".addOptionText").text(addOptionText);
                  
               
               
            } else if (optionLenght > 1) {
               
               var addOptionText =" + " + $(".selectOption.selected").find(".optionName").first().attr("data-optionname") + " 외　" + (optionLenght-1);
               $(".addOptionText").text(addOptionText);
               console.log($(this).find(".optionPrice").attr("data-optionPrice"));
          
               
                 
            } else {
                  $(".addOptiontext").text("선택하지 않았습니다.");

            }
      
      
   });
   */


	var optionTotalPrice = 0; // 옵션 총 가격 변수 추가

	   var countNum = 1;
	$(".optionConts").on("click", function (a) {
	  var optionCount =
	    '<div class="d-flex optionCounter">' +
	    '<button type="button" class="optionMinus"> - </button>' +
	    '<p>' +
	    countNum +
	    '</p>' +
	    '<button type="button" class="optionPlus"> + </button>' +
	    '</div>';
	  var $selectOption = $(this).parent(".selectOption");
	
	  $selectOption.toggleClass("selected");
	
	  if ($selectOption.hasClass("selected")) {
	    $selectOption.append(optionCount);
	    $(this).addClass("optionContsBackground");
	
	    // 옵션 선택 시 바로 modalTotalPrice와 addOptionText 업데이트
	    updateTotalPrice();
	  } else {
	    countNum = 1;
	    $(this).siblings().remove();
	    $(this).removeClass("optionContsBackground");
	
	    if (countNum === 1) {
	      var resetPrice = parseFloat($(this).find(".optionPrice").attr("data-optionPrice").replace(",", ""));
	      $(this).find(".optionPrice").text(resetPrice.toLocaleString());
	    }
	    $(".addOptionText").text("");
	    $(".modalTotalPrice").text($(".modalTotalPrice").text());
	
	    // 옵션 해제 시 바로 modalTotalPrice와 addOptionText 업데이트
	    updateTotalPrice();
	  }
	});
	
	// 옵션 추가/제거 버튼 클릭 시 옵션 카운트 업데이트
	$(document).on("click", ".optionPlus", function () {
	  var $quantity = $(this).siblings("p");
	  var currentQuantity = parseInt($quantity.text(), 10);
	
	  if (currentQuantity < 20) {
	    currentQuantity++;
	    $quantity.text(currentQuantity);
	
	    // 옵션 가격 계산 및 업데이트
	    updateOptionPrice();
	    updateTotalPrice();
	  }
	});
	
	$(document).on("click", ".optionMinus", function () {
	  var $quantity = $(this).siblings("p");
	  var currentQuantity = parseInt($quantity.text(), 10);
	
	  if (currentQuantity > 1) {
	    currentQuantity--;
	    $quantity.text(currentQuantity);
	
	    // 옵션 가격 계산 및 업데이트
	    updateOptionPrice();
	    updateTotalPrice();
	  }
	});
	
	function updateOptionPrice() {
	  optionTotalPrice = 0; // 옵션 총 가격 초기화
	
	  $(".selectOption.selected").each(function () {
	    var $getOptionPrice = $(this).find(".optionPrice").attr("data-optionPrice");
	    var $getOptionPriceInt = parseFloat($getOptionPrice.replace(",", ""));
	    var $quantity = $(this).find(".optionCounter p");
	    var currentQuantity = parseInt($quantity.text(), 10);
	
	    // 옵션 가격을 수량에 맞게 계산
	    $getOptionPriceInt *= currentQuantity;
	
	    optionTotalPrice += $getOptionPriceInt; // 옵션 가격 누적 합산
	  });
	
	  // 옵션 가격 업데이트 후 메뉴와 합산하여 modalTotalPrice 업데이트
	  updateTotalPrice();
	}
	
	
	function updateTotalPrice() {
	  var optionLenght = $(".selectOption.selected").length;
	  var getPrice = $(".modalPrice").attr("data-changeprice");
	  var getPriceInt = parseFloat(getPrice);
	  var addOptionPrice = 0;
	
	  $(".selectOption.selected").each(function () {
	    var $getOptionPrice = $(this).find(".optionPrice").attr("data-optionPrice");
	    var $getOptionPriceInt = parseFloat($getOptionPrice.replace(",", ""));
	    var $quantity = $(this).find(".optionCounter p");
	    var currentQuantity = parseInt($quantity.text(), 10);
	
	    // 옵션 가격을 수량에 맞게 계산
	    $getOptionPriceInt *= currentQuantity;
	
	    addOptionPrice += $getOptionPriceInt;
	  });
	
	  var changePrice = (getPriceInt + addOptionPrice).toLocaleString();
	  $(".modalTotalPrice").text(changePrice);
	
	  if (optionLenght === 1) {
	    var addOptionText = " + " + $(".selectOption.selected").find(".optionName").attr("data-optionname");
	    $(".addOptionText").text(addOptionText);
	  } else if (optionLenght > 1) {
	    var addOptionText =
	      " + " +
	      $(".selectOption.selected").find(".optionName").first().attr("data-optionname") +
	      " 외 " +
	      (optionLenght - 1);
	    $(".addOptionText").text(addOptionText);
	  } else {
	    $(".addOptionText").text("옵션");
	  }
	}
	
	// 페이지 로딩 시 초기 업데이트 수행
	updateTotalPrice();

   
   $(".modal_info ._count :button, .optionMinus, .optionPlus")

   
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

/*
   $("#starSubmitBtn").on("click",function(){
      var selectedRating = $("input[name='rating']:checked").val();
      var menuSeqValue =  $(".menuSeq").data("menuseq"); 
      $.ajax({
          async: true 
          ,cache: false
          ,type: "post"
       
          ,url: "/userStarInsert"
    
          ,data : { star : selectedRating,
                  menu_seq : menuSeqValue
          }
          ,success: function(response) {
             alert("성공");

          }
          ,error : function(jqXHR, textStatus, errorThrown){
             alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
          }
       });
      
      
   });
   star의 값은 저장되지만 seq값은 처음 list의 나온 값만 저장됨
   */
$("#starSubmitBtn").on("click",function(){
      var selectedRating = $("input[name='rating']:checked").val();
      var selectedSeq = $("#modalSeq").text();
      $.ajax({
          async: true 
          ,cache: false
          ,type: "post"
       
          ,url: "/userStarInsert"
    
          ,data : { star : selectedRating,
                  menu_seq : selectedSeq,
          }
          ,success: function(response) {
             alert("성공");

          }
          ,error : function(jqXHR, textStatus, errorThrown){
             alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
             console.log(selectedSeq);
          }
       });
       

   });

   

   
});