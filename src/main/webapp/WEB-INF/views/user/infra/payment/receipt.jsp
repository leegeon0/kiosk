<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Receipt</title>
    <script src="https://kit.fontawesome.com/9ba187d4f0.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/kiosk.css">
    <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	
</head>

<body>
    <div class="wrapper">
        <div class="pointContainer">
            <div class="receiptBox">
                <h2>영수증</h2>
                <h3>[ 주문번호 : <span id="orderNum">1</span> 번 ]</h3>
                <div id="receiptModal" style="display: none;">
				  <p id="receiptMessage"></p>
				</div>
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">품명</th>
                        <th scope="col">d n수량</th>
                        <th scope="col">금액</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>순대국밥</td>
                        <td>1</td>
                        <td>10,000원</td>
                      </tr>
                      <tr>
                        <td>소머리국밥</td>
                        <td>1</td>
                        <td>15,000원</td>
                      </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>주문합계 :</td>
                            <td></td>
                            <td>25,000원</td>
                        </tr>
                        <tr>
                          <td>총 스탭프 계수</td>
                          <td></td>
                          <td>2개</td>
                        </tr>
                    </tfoot>
                  </table>
                  <br>
                  <h3>** 신용카드 결제 **</h3>
                  <h4>발행 일시 : 2023-07-17 15:25:30</h4>
            </div>

        </div>
    </div>



    <script src="/resources/assets/js/kiosk.js"></script>
    <script>
	


    </script>
</body>

</html>