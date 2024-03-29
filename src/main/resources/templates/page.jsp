<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<spring:url var="resources" value="/resources/cp" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inventory : ${title }</title>

		<script>
			/* window.menu = '${title}'; */
		
			window.contextRoot = '${contextRoot}'
		</script>

		<!-- Vendor CSS -->
        <link href="${resources}/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="${resources}/vendors/bower_components/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
        <link href="${resources}/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="${resources}/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">
        <link href="${resources}/vendors/bower_components/datatables.net-dt/css/jquery.dataTables.min.css" rel="stylesheet">
        <!-- Dropdown Select CSS -->
        <link href="${resources}/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
        <!-- Datetimepicker CSS -->
        <link href="${resources}/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <!-- Dropdown Chosen CSS -->
        <link href="${resources}/vendors/bower_components/chosen/chosen.css" rel="stylesheet">


        <!-- CSS -->
        <link href="${resources}/css/app_1.min.css" rel="stylesheet">
        <link href="${resources}/css/app_2.min.css" rel="stylesheet">
        <link href="${resources}/css/myapp.css" rel="stylesheet">
        
 </head>
    <body>
        
        <%@include file="./shared/header.jsp"%>

        <section id="main">
               
               <%@include file="./shared/sidebar.jsp"%>             
               
               <c:if test="${userClickManageDashboard == true }">
               		<%@include file="dashboard.jsp"%>
               </c:if>              
               
               <c:if test="${userClickManageCategory == true }">
               		<%@include file="category.jsp"%>
               </c:if>
               
               <c:if test="${userClickManageCustomer == true }">
               		<%@include file="customer.jsp"%>
               </c:if>
               
               <c:if test="${userClickManageSupplier == true }">
               		<%@include file="supplier.jsp"%>
               </c:if>                              
               
               <c:if test="${userClickManageVendor == true }">
               		<%@include file="vendor.jsp"%>
               </c:if>   
               
               <c:if test="${userClickManageUser == true }">
               		<%@include file="user.jsp"%>
               </c:if>                           
               
               <c:if test="${userClickManageProduct == true }">
               		<%@include file="product.jsp"%>
               </c:if> 
               
               <c:if test="${userClickManagePurchase == true }">
               		<%@include file="purchase.jsp"%>
               </c:if> 
               
               <c:if test="${userClickManagePurchaseList == true }">
               		<%@include file="purchaseList.jsp"%>
               </c:if>  
               
               <c:if test="${userClickManageSales == true }">
               		<%@include file="sales.jsp"%>
               </c:if>            
                             
                                   
        </section>

		<%@include file="./shared/footer.jsp"%>
		
        <!-- Page Loader -->
        <%@include file="./shared/page-loader.jsp"%>
        
        
         <!-- Javascript Libraries -->
        <script src="${resources}/vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="${resources}/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script src="${resources}/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="${resources}/vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="${resources}/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        
        <!-- DropDown Libraries -->
        <script src="${resources}/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
        <%-- <script src="${resources}/vendors/bower_components/moment/min/moment.min.js"></script> --%>
        
        <!-- DropDown Chosen Libraries -->
        <script src="${resources}/vendors/bower_components/chosen/chosen.jquery.js"></script>
        
        <!-- Sweet Alert Libraries -->
        <script src="${resources}/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
        
        <!-- Datetimepicker Libraries -->
        <script src="${resources}/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
        
        <!-- DataTable Libraries -->
        <script src="${resources}/vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        
        <!-- Bootbox Libraries -->
        <script src="${resources}/js/bootbox.min.js"></script>
        
        <!-- Dashboard Libraries -->
        <script src="${resources}/vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="${resources}/vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="${resources}/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
        <script src="${resources}/vendors/sparklines/jquery.sparkline.min.js"></script>
        <script src="${resources}/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

        <script src="${resources}/vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="${resources}/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
        <script src="${resources}/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>

        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->

        <script src="${resources}/js/app.min.js"></script>
        
        <script src="${resources}/js/myapp.js"></script>
        
    </body>
  
</html>