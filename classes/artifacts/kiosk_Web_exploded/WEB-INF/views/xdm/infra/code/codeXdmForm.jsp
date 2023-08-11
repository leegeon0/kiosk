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
		                    <th scope="col">name</th>
		                    <th scope="col">codegroup_seq</th>
		                    <th scope="col">delNy</th>
		                </tr>
                	</thead>
	                <tbody>
	                <tr>
		                <td><input type="text" class="form-control" id="seq" name="seq" placeholder="Auto Increment" required readonly value="<c:out value="${item.codeSeq}"/>"></td>
		                <td><input type="text" class="form-control" id="name" name="name" required value="<c:out value="${item.codeName}"/>"></td>
		                <td><input type="text" class="form-control" id="codegroup_seq" name="codegroup_seq" required value="<c:out value="${item.codegroup_seq}"/>"></td>
		                <td><input type="text" class="form-control" id="delNy" name="delNy" required value="<c:out value="${item.codeDelNy}"/>"></td>
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
  $("#submitBtn").on("click",function(){
	 	
/* 	    var delNyValue = $("#delNy").val();
	    
	    if (delNyValue !== "0" && delNyValue !== "1" && delNyValue !== "") {
	    	event.preventDefault()
	      alert("delNy는 0과 1만 입력할 수 있습니다.");
	    	return false;
	    }else{
	    	alert("저장완료");	
	    }  */
	 	$("form[name=form]").attr("action","/codeInsert").submit();
	 	 
	  });
  
  
	  $("#updateBtn").on("click",function(){
	 	
	 	
	 	$("form[name=form]").attr("action","/codeUpdt").submit();
	 	 
	  });
	  
	  $("#deleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/codeDel").submit();

	 		 
	 });
	  
	  $("#ueleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/codeUele").submit();
	 		 
	 });
	  


  
  </script>

</body>

</html>



