<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

	<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
	  
	  
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
	
	<script type="text/javascript">
	/* 네비게이션 이벤트 */
	const xdmLink =  document.location.href;
	const navItem = document.querySelectorAll("aside.sidebar a");
	navItem.forEach(function(e, i){
		if(navItem[i].href == xdmLink) {
			if(navItem[i].pathname == '/indexXdmView') {
				navItem[i].className = "nav-link";
			} else {
				navItem[i].className = "active";
				navItem[i].parentElement.parentElement.parentElement.childNodes[1].className = "nav-link";
				navItem[i].parentElement.parentElement.className = "nav-content collapse show";
			}
		}

	})
	</script>
	<!-- ======= Footer ======= -->
	  <footer id="footer" class="footer">
	    <div class="copyright">
	      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
	    </div>
	    <div class="credits">
	      <!-- All the links in the footer should remain intact. -->
	      <!-- You can delete the links only if you purchased the pro version. -->
	      <!-- Licensing information: https://bootstrapmade.com/license/ -->
	      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
	      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
	    </div>
	  </footer><!-- End Footer -->