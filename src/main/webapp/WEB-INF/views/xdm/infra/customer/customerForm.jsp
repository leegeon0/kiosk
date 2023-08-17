<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tables / Data - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/assets/img/favicon.png" rel="icon">
  <link href="/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/assets/css/niceAdmin.css" rel="stylesheet">
  <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
  
  <style type="text/css">
  
  .sm{
  	dispaly : flex;
  }
  
  </style>
   

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    <!-- Head영역 include -->
    <%@include file="../include/xdmHead.jsp" %>
</head>

<body>

<!-- Header / nav 영역 include -->
<%@include file="../include/xdmHeader.jsp"%>
<%@include file="../include/xdmNav.jsp"%>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables Edit</h5>
               <form class="submitForm" name="form" method="post">
				   <table class="table">
                	<thead>
		                <tr>
		                    <th scope="col">seq</th>
		                    <th scope="col">phoneNum</th>
                            <th scope="col">countStamp</th>
		                </tr>
                	</thead>
	                <tbody>
	                <tr>
		                <td><input type="text" class="form-control" id="seq" name="seq" placeholder="Auto Increment" required readonly value="<c:out value="${item.seq}"/>"></td>
		                <td><input type="text" class="form-control" id="phoneNum" name="phoneNum" value="<c:out value="${item.phoneNum}"/>"></td>
                        <td><input type="text" class="form-control" id="countStamp" name="countStamp" value="<c:out value="${item.countStamp}"/>"></td>
					</tr>
	                </tbody>
              		</table>


              		<c:choose>
						<c:when test="${empty item.seq }">
							<button type="button" class="btn btn-primary" id="submitBtn">저장</button>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn btn-primary" id="updateBtn">업데이트</button>
							<button type="button" class="btn btn-primary" id="deleteBtn">삭제</button>
						</c:otherwise>	
					</c:choose>

				<!-- 	 
					<button type="button" class="btn btn-primary" id="submitBtn">저장</button>
					<button type="button" class="btn btn-primary" id="updateBtn">업데이트</button>
					<button type="button" class="btn btn-primary" id="ueleteBtn">사용/해제</button>
					<button type="button" class="btn btn-primary" id="deleteBtn">삭제</button>
              	!-->
			
				</form>
			
              <!-- Table with stripped rows -->
             
              <!-- End Table with stripped rows -->

              

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<%@include file="../include/xdmFooter.jsp"%>

  <!-- Vendor JS Files -->
  <script src="/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/resources/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/resources/assets/vendor/quill/quill.min.js"></script>
  <script src="/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/resources/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/resources/assets/vendor/php-email-form/validate.js"></script>
   

  <!-- Template Main JS File -->
  <script src="/resources/assets/js/niceAdmin.js"></script>
  <script src="/resources/assets/js/validation.js"></script>
  
  <script type="text/javascript">
  
  	/* var objName = $("#categoryName");
  
    validationInst = function(){
	
	if(validationUpdt() == false) return false;
	
	}

 	validationUpdt = function(){
		
		//  실제 체킹하는 소스가 들어가는 부분
		if(check(objName) == false) return false;
		
	}   */
 	
 	
 	
 	
  $("#submitBtn").on("click",function(){
	  /* 	if(validationInst() == false) return false;  */
	   	// 함수는 ()이게 있어야 함!!!

	
	 	$("form[name=form]").attr("action","/customerInsert").submit();
	  });
  

	  $("#updateBtn").on("click",function(){
	 	
 		 /* if(validationUpdt() == false) return false; */	 	 
		 $("form[name=form]").attr("action","/customerUpdt").submit(); 
	  });
		 
/* 	  
	  $("#updateBtn").on("click", function(event) {
	  	    event.preventDefault(); // 폼의 제출을 중단합니다.

	  	    // 이름을 검증하는 AJAX 요청
	  	    $.ajax({
	  	        async: true,
	  	        cache: false,
	  	        type: "post",
	  	        url: "/check",
	  	        data: { "categoryName": $("#categoryName").val() },
	  	        success: function(response) {
	  	            if (response.rt == "available") {
	  	                // 이름이 사용 가능한 경우 폼을 제출합니다.
	  	                alert("사용가능합니다.");
	  	                $("form[name=form]").attr("action", "/codegroupUpdt").submit();
	  	            } else {
	  	                // 이름이 사용 불가능한 경우 경고 메시지를 표시합니다.
	  	                alert("다른 이름으로 작성해주세요.");
	  	            }
	  	        },
	  	        error: function(jqXHR, textStatus, errorThrown) {
	  	            alert("ajaxUpdate " + jqXHR.status + " : " + errorThrown);
	  	        }
	  	    });
	  	});
	   */
	  
	  
	  
	  
	  $("#deleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/customerDelt").submit();

	 		 
	 });
	  


  
  </script>

</body>

</html>



