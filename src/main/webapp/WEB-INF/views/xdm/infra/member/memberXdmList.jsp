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
              <h5 class="card-title">Member Datatables</h5>
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
		                    <th scope="col">id</th>
		                    <th scope="col">password</th>
		                    <th scope="col">name</th>
		                    <th scope="col">memberAddress</th>
		                    <th scope="col">memberTel</th>
		                    <th scope="col">salesType</th>
		                    <th scope="col">companyAddress</th>
		                    <th scope="col">companyTel</th>
		                    <th scope="col">delNy</th>
		                    <th scope="col">registerTime</th>
		                    
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
								<td><c:out value="${list.seq}"></c:out></td>
								<td><a href="memberXdmForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.id}"/></a></td>
								<td><c:out value="${list.password}"></c:out><br></td>
								<td><c:out value="${list.name}"></c:out><br></td>
								<td><c:out value="${list.memberAddress}"></c:out><br></td>
								<td><c:out value="${list.memberTel}"></c:out><br></td>
								<td><c:out value="${list.salesType}"></c:out><br></td>
								<td><c:out value="${list.companyAddress}"></c:out><br></td>
								<td><c:out value="${list.companyTel}"></c:out><br></td>
								<td><c:out value="${list.delNy}"></c:out><br></td>
								<td><c:out value="${list.registerTime}"></c:out><br></td>
							</tr>
							</c:forEach>
						</c:otherwise>
						</c:choose>
	                </tbody>
              		</table>
              		<a href="memberXdmForm"><button type="button" class="btn btn-primary" id="insertBtn">추가</button></a>
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

<!-- Footer영역 include -->
<%@include file="../include/xdmFooter.jsp"%>
  
 
  
  
  
  <script type="text/javascript">
  $("#btn").on("click", function(){
		
		/* $("form[name=formList]").attr("method","get"); */

		$("form[name=formList]").attr("action", "/memberXdmList").submit();
		$("form[name=formList]").attr("method","post");
		
		
	});
  
  goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "/memberXdmList").submit();
	}
  </script>

</body>

</html>



