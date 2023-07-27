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
  <style type="text/css">
  
  
  .edit_pos{
  	display : flex;
  	justify-content: space-around;
  }
  
  .form_line_left{
  	width : 45%

  }
  .form_line_right{
	width : 45%
  }
  

  .btn_btn{
  	clear: both;
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
               <div class="col-sm-12 text-center">
        
			      		<c:set var="type" value="1"/>		<!-- #-> -->
			        	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
						<c:choose>
							<c:when test="${ifmmSeq eq 0 }">
								<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${fn:length(listUploaded) eq 0 }">
										<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
									</c:when>
									<c:otherwise>
										<c:set var="GetNy" value="0"/>
										<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
											<c:if test="${listUploaded.type eq type }">
									        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" value="<c:out value="${listUploaded.seq }"/>"/>
									        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" value="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"/>  
												<img id="<c:out value="${name }"/>Preview" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
												<c:set var="GetNy" value="1"/>		
											</c:if>
										</c:forEach>
										<c:if test="${GetNy eq 0 }">
											<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
										</c:if>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
			            
						<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
						<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
						<label for="<c:out value="${name }"/>" class="form-label input-file-button"><b>+</b></label>
			 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
			        </div>
              		<div class="edit_pos">
              			<div class="form_line_left">
              			<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="seq" placeholder="Auto Increment" readonly name="seq" required value="<c:out value="${item.seq}"/>">
                    		<label class="form-label" for="seq">seq</label>
                		</div>
              			<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="id" name="id" required value="<c:out value="${item.id}"/>">
                    		<label class="form-label" for="id">아이디</label>
                		</div>
                       	<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="password" name="password"  required value="<c:out value="${item.password}"/>">
                    		<label class="form-label" for="id">비밀번호</label>
                		</div>
                		<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="name" name="name"  required value="<c:out value="${item.name}"/>">
                    		<label class="form-label" for="id">이름</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="salesType" name="salesType" required value="<c:out value="${item.salesType}"/>">
                			<label class="form-label" for="salesType">판매유형</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" placeholder="default : 0" id="delNy" name="delNy" required value="<c:out value="${item.delNy}"/>">
                			<label class="form-label" for="delNy">사용여부</label>
                		</div>
              		</div>
              		<div class="form_line_right">
              			<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="memberAddress" name="memberAddress" required value="<c:out value="${item.memberAddress}"/>">
                			<label class="form-label" for="memberAddress">회원 주소</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="memberTel" name="memberTel" required value="<c:out value="${item.memberTel}"/>">
                			<label class="form-label" for="memberTel">회원 전화번호</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="companyAddress" name="companyAddress" required value="<c:out value="${item.companyAddress}"/>">
                			<label class="form-label" for="companyAddress">회사 주소</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="companyTel" name="companyTel" required value="<c:out value="${item.companyTel}"/>">
                			<label class="form-label" for="companyTel">회사 전화번호</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="registerTime" name="registerTime" placeholder="자동등록" readonly required value="<c:out value="${item.registerTime}"/>">
                			<label class="form-label" for="companyTel">가입 날짜</label>
                		</div>
              		
              		</div>
              		
              	</div>
              	
              	<!-- 이미지첨부 -->
              	        <div class="col-sm-6 mt-3 mt-sm-0">
        	<c:set var="type" value="2"/>		<!-- #-> -->
        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
			<div id="<c:out value="${name }"/>Preview" class="addScroll">
				<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
					<c:if test="${listUploaded.type eq type }">
						<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
							<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
							<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
						</div>
					</c:if>
				</c:forEach>
			</div>
        </div>
        <!-- 이미지 첨부 -->
        <!-- 파일 첨부 -->
        <div class="col-sm-6 mt-3 mt-sm-0">
        	<c:set var="type" value="3"/>		<!-- #-> -->
        	<c:set var="name" value="uploadFile"/>		<!-- #-> -->
        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>   	
			<label for="uploadFile" class="form-label input-file-button">파일첨부</label>
			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="<c:out value="${name }"/>Preview" class="list-group">
					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						<c:if test="${listUploaded.type eq type }">
							<li id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" class="list-group-item d-flex justify-content-between align-items-center">
							<a href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" download="<c:out value="${listUploaded.originalName }"/>" class="text-decoration-none"><c:out value="${listUploaded.originalName }"/></a>
							<span class="badge bg-danger rounded-pill" onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>
							</li>
						</c:if>
					</c:forEach>				
				</ul>
			</div>
        </div>
        <!-- 파일 첨부 -->
              		
              		
              	


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
 /*  
  $("#name").on("blur", function(){
  	
  	
  	$.ajax({
  		async: true 
  		,cache: false
  		,type: "post"

  		,url: "/check"

  		,data : { "name" : $("#name").val()}
  		,success: function(response) {
  			if(response.rt == "available") {
  				alert("사용가능합니다.")
  			} else {
  				alert("다른이름으로 작성해주세요.");
  				
  				
  			}
  		}
  		,error : function(jqXHR, textStatus, errorThrown){
  			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
  		}
  	});

  });
   */
  
  	$("#submitBtn").on("click",function(){
	 	
/* 	    var delNyValue = $("#delNy").val();
	    
	    if (delNyValue !== "0" && delNyValue !== "1" && delNyValue !== "") {
	    	event.preventDefault()
	      alert("delNy는 0과 1만 입력할 수 있습니다.");
	    	return false;
	    }else{
	    	alert("저장완료");	
	    }  */
	 	$("form[name=form]").attr("action","/memberInsert").submit();
	 	 
	});
   
  	$("#updateBtn").on("click", function(event) {
  	    event.preventDefault(); // 폼의 제출을 중단합니다.

  	    // 이름을 검증하는 AJAX 요청
  	    $.ajax({
  	        async: true,
  	        cache: false,
  	        type: "post",
  	        url: "/check",
  	        data: { "name": $("#name").val() },
  	        success: function(response) {
  	            if (response.rt == "available") {
  	                // 이름이 사용 가능한 경우 폼을 제출합니다.
  	                alert("사용가능합니다.");
  	                $("form[name=form]").attr("action", "/memberUpdt").submit();
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
/*   
	  $("#updateBtn").on("click",function(){
	 	
	 	
	 	$("form[name=form]").attr("action","/memberUpdt").submit();
	 	 
	  });
	   */
	  $("#deleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/memberDel").submit();

	 		 
	 });
	  
	  $("#ueleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/memberUele").submit();
	 		 
	 });
	  
	  
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
			
//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3

//			uiType: 1 => 이미지형
//			uiType: 2 => 파일형
//			uiType: 3 => 프로필형

			var files = $("#" + objName +"")[0].files;
			var filePreview = $("#" + objName +"Preview");
			var numbering = [];
			var maxNumber = 0;
			
			if(uiType == 1) {
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
				
				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else if(uiType == 2){
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else {
				// by pass
			}
			
			$("#" + objName + "MaxNumber").val(maxNumber);

			var totalFileSize = 0;
			var filesCount = files.length;
			var filesArray = [];
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
			
			for (var i=0; i<filesCount; i++) {
				if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

				totalFileSize += files[i].size;
				
				filesArray.push(files[i]);
			}

			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				for (var i=0; i<filesArray.length; i++) {
					var file = filesArray[i];

					var picReader = new FileReader();
				    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
				    picReader.readAsDataURL(file);
				}			
			} else if(uiType == 2) {
				for (var i = 0 ; i < filesCount ; i++) {
					addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				 fileReader.onload = function () {
					 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
				 }	
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			} else {
				return false;
			}
			return false;
		}
		
		
		addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
			return function(event) {
				var imageFile = event.target;
				var sort = parseInt(maxNumber) + i;

				var divImage = "";
				divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
				divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
				divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
				divImage += '</div> ';
				
				filePreview.append(divImage);
		    };
		}
		
		
		delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#imgDiv_"+type+"_"+sort).remove();
			
			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
		
		
		addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

			var sort = parseInt(maxNumber) + i;
			
			var li ="";
			li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
			li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
			li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li += name;
			li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li +='</li>';
			
			filePreview.append(li);
		}
		
		
		delLi = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#li_"+type+"_"+sort).remove();

			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
		
		openViewer = function (type, sort) {
			var str = '<c:set var="tmp" value="'+ type +'"/>';
			$("#modalImgViewer").append(str);
			$("#modalImgViewer").modal("show");
		}
	  
	


  
  </script>

</body>

</html>