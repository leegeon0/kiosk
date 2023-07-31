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
</head>

<body>

	<%@include file="codegroupTop.jsp"%>


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
              <h5 class="card-title">Datatables</h5>
               <form class="sm" name="formList" method="post">
               
               	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
				<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
				
				
                <input type="text" name="shKeyword"  value="<c:out value="${vo.shKeyword}"/>">
	
				<button type="button" class="btn btn-primary" id="btn">검색</button>
					
					
				   <table class="table">
				   
                	<thead>
                	<!-- 
                	 	<select name="shOption" style="margin-right : 10px;">
							<option value="">-선택-</option>
							<option value="1">1</option>
							<option value="2">2</option>
						</select> 
					    <label for="validationCustom02" class="form-label">이름</label>
					    <input type="text" name="shKeyword">
					<div class="btn_tab" style="width : 100px; height : 70px; display : inline;">
					  	<button type="button" class="btn btn-primary" id="btn" >검색</button>
				  	</div>
				  	 -->
		                <tr>
		                    <th scope="col">seq</th>
		                    <th scope="col">optionQuantity</th>
		                    <th scope="col">option_seq</th>
		                    <th scope="col">orderList_orderListID</th>
		                    
		                </tr>
                	</thead>
	                <tbody>
						<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td class="text-center" colspan="9">There is no data!</td>
							</tr>	
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status">
							<tr>
								<td><a href="optionListForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.seq}"/></a></td>
								<td><c:out value="${list.optionQuantity}"></c:out></td>
								<td><c:out value="${list.option_seq}"></c:out></td>
								<td><c:out value="${list.orderList_orderListId}"></c:out></td>
							</tr>
							</c:forEach>
						</c:otherwise>
						</c:choose>
	                </tbody>
              		</table>
              		<a href="customerForm"><button type="button" class="btn btn-primary" id="insertBtn">추가</button></a>
              		<div class="container-fluid px-0 mt-2">
					    <div class="row">
					        <div class="col">
					            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
					            <ul class="pagination justify-content-center mb-0">
					                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
					                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
					                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:when>
							<c:otherwise>             
					                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>                
					<c:if test="${vo.endPage ne vo.totalPages}">                
					                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
					</c:if>
					                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
					            </ul>
					        </div>
					    </div>
					</div>
				</form>
			
              <!-- Table with stripped rows -->
             
              <!-- End Table with stripped rows -->

              

            </div>
          </div>

        </div>
      </div>
     
    </section>

  </main><!-- End #main -->

  <%@include file="codegroupBottom.jsp"%>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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
  
  <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
  
  <script type="text/javascript">
  $("#btn").on("click", function(){
		
		/* $("form[name=formList]").attr("method","get"); */

		$("form[name=formList]").attr("action", "/optionListXdmList").submit();
		$("form[name=formList]").attr("method","post");
		
		
	});
  
  goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "/optionListXdmList").submit();
	}
  </script>

</body>

</html>



