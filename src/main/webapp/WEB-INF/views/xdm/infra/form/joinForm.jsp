<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> --%>
    
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pos_Login</title>
	<script src="https://kit.fontawesome.com/1cfc86f328.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
            <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/assets/css/pos_main.css">
    <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src="/resources/assets/js/pos_main.js"></script>
</head>

<body class="p-5">
    <div class="container p-5 w-50">
        <!-- Pills navs -->
        <ul class="nav nav-pills nav-justified mb-3 p" id="ex1" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" id="tab-register" data-mdb-toggle="pill" href="#pills-register" role="tab"
                    aria-controls="pills-register" aria-selected="false" style="background-color: #FF6B3D80; color: #fff">Register</a>
            </li>
        </ul>
        <!-- Pills navs -->

        <!-- Pills content -->
        <div class="tab-content">
            <div class="tab-pane fade show active" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
                <form name="form">
                    
                    <!-- id input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="id" name="id" class="form-control" />
                        <label class="form-label" for="id">아이디</label>
                    </div>

                    <!-- password input -->
                    <div class="form-outline mb-4">
                        <input type="password" id="password" name="password" class="form-control"/>
                        <label class="form-label" for="password">비밀번호</label>
                    </div>

                    <!-- repeatPassord input -->
                    <div class="form-outline mb-4">
                        <input type="password" id="repeatPassword" name="repeatPassword" class="form-control" />
                        <label class="form-label" for="repeatPassword">비밀번호 확인</label>
                    </div>
                    <!-- name input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="name" name="name" class="form-control" />
                        <label class="form-label" for="name">성명</label>
                    </div>

                    <!-- memberAddress input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="memberAddress" name="memberAddress" class="form-control" />
                        <label class="form-label" for="memberAddress">회원 주소</label>
                    </div>

                    <!-- memberTel input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="memberTel" name="memberTel" class="form-control" />
                        <label class="form-label" for="memberTel">회원 전화번호</label>
                    </div>
                    
                    <!-- salesType input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="salesType" name="salesType" class="form-control" />
                        <label class="form-label" for="salesType">판매유형</label>
                    </div>
                    <!-- companyAddress input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="companyAddress" name="companyAddress" class="form-control" />
                        <label class="form-label" for="companyAddress">회사 주소</label>
                    </div>
                    <!-- companyTel input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="companyTel" name="companyTel" class="form-control" />
                        <label class="form-label" for="companyTel">회사 전화번호</label>
                    </div>

                    <!-- Checkbox -->
                    <div class="form-check d-flex justify-content-center mb-4">
                        <input class="form-check-input me-2" type="checkbox" value="" id="check" name="check" checked
                            aria-describedby="registerCheckHelpText" />
                        <label class="form-check-label" for="Check">
                            해당 상호 약관을 읽었으며 이에 동의합니다.
                        </label>
                    </div>

                    <!-- Submit button -->
                <a href="indexUserLogin"><button type="submit" id="signUpBtn" class="btn btn-primary btn-block mb-3 btn-goback" style="background-color: #FF6B3D; color: #fff">Sign up</button></a>
                </form>
            </div>
        </div>
        <!-- Pills content -->
    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>
    
    <script type="text/javascript">
    
/*     validationInst = function(){
    	
    	if(validationUpdt == false) return false;
    }
    
    validationUpdt = function(){
    	
    	//  실제 체킹하는 소스가 들어가는 부분
    	
    	
    	
    	
    } */
    
  $("#signUpBtn").on("click", function(){
		
		/* $("form[name=formList]").attr("method","get"); */

		if($.trim($("#name").val()) == "" || $.trim($("#name").val()) == null){
			alert("이름을 입력해주세요.");
			$("#name").focus();
		}else{
			$("form[name=form]").attr("action","/memberInsert").submit();	
		}
		
		/* $("form[name=formList]").attr("method","post"); */
		
		
	});
 
    </script>
</body>

</html>