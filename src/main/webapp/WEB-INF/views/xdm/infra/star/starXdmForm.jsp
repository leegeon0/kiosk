<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  
<!-- Head영역 include -->
<%@include file="../include/xdmHead.jsp" %>   

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
		                    <th scope="col">optionName</th>
		                    <th scope="col">optionPrice</th>
		                    <th scope="col">menuSeq</th>
		                </tr>
                	</thead>
	                <tbody>
	                <tr>
		                <td><input type="text" class="form-control" id="seq" name="seq" placeholder="Auto Increment" required readonly value="<c:out value="${item.seq}"/>"></td>
		                <td><input type="text" class="form-control" id="star" name="star" value="<c:out value="${item.star}"/>"></td>
		                <td><input type="text" class="form-control" id="starDate" name="starDate" required value="<c:out value="${item.starDate}"/>"></td>
		                <td><input type="text" class="form-control" id="menuSeq" name="menuSeq" required value="<c:out value="${item.menuSeq}"/>"></td>
					</tr>
	                </tbody>
              		</table>


              		<c:choose>
						<c:when test="${empty item.seq }">
							<button type="button" class="btn btn-primary" id="submitBtn">저장</button>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn btn-primary" id="updateBtn">업데이트</button>
							<button type="button" class="btn btn-primary" id="ueleteBtn">사용/해제</button>
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

<!-- Footer영역 include -->
<%@include file="../include/xdmFooter.jsp"%>

  
  <script type="text/javascript">
  
  	var objName = $("#optionName");
  
    validationInst = function(){
	
	if(validationUpdt() == false) return false;
	
	}

 	validationUpdt = function(){
		
		//  실제 체킹하는 소스가 들어가는 부분
		if(check(objName) == false) return false;
		
	}  
 	
 	
 	
 	
/*   $("#submitBtn").on("click",function(){
	  	if(validationInst() == false) return false; 
	   	// 함수는 ()이게 있어야 함!!!

		var delNyValue = $("#delNy").val();
	    
	    if (delNyValue !== "0" && delNyValue !== "1" && delNyValue !== "") {
	    	event.preventDefault()
	      alert("delNy는 0과 1만 입력할 수 있습니다.");
	    	return false;
	    }else{ 
	   // 	alert("저장완료");	
	    }  */
	    
	    
 	    
	 	$("form[name=form]").attr("action","/optionInsert").submit();
	 	 
	  });
  

	  $("#updateBtn").on("click",function(){
	 	
 		 if(validationUpdt() == false) return false;	 	 
		 $("form[name=form]").attr("action","/optionUpdt").submit(); 
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
	 		
	 		
	 		$("form[name=form]").attr("action","/optionDel").submit();

	 		 
	 });
	  
	  $("#ueleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/optionUele").submit();
	 		 
	 });
	  


  
  </script>

</body>

</html>



