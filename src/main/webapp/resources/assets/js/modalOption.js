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

    // 옵션 카운트 업데이트 시 바로 modalTotalPrice 업데이트
    updateTotalPrice();
  }
});

$(document).on("click", ".optionMinus", function () {
  var $quantity = $(this).siblings("p");
  var currentQuantity = parseInt($quantity.text(), 10);

  if (currentQuantity > 1) {
    currentQuantity--;
    $quantity.text(currentQuantity);

    // 옵션 카운트 업데이트 시 바로 modalTotalPrice 업데이트
    updateTotalPrice();
  }
});

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
    $(".addOptionText").text("선택하지 않았습니다.");
  }
}

// 페이지 로딩 시 초기 업데이트 수행
updateTotalPrice();












/* 백업 */


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
   

