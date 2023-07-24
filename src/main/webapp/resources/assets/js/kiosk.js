$(document).ready(function() {
    $(".numberPad").click(function() {
      var number = $(this).text();
      var phoneNumberInput = $("#phoneNumber");
      phoneNumberInput.val(phoneNumberInput.val() + number);
    });
  
    $(".cencel").click(function() {
      $("#phoneNumber").val("010-"); // 입력 필드 값을 초기화합니다.
    });
  
    $(".enter").click(function() {
      $("form").submit(); // 폼을 제출합니다.
    });
  });
  