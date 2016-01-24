<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Insert title here</title>
	
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
	
</head>
<body>
	
	<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	<script src="js/parallax.js"></script>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/sm_dig10622.jpg"></div>
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>


	<!-- import -->
	<!-- For Leaflet Library -->
	<link rel="stylesheet" href="js/leaflet-library/leaflet.css" />
	<script src="js/leaflet-library/leaflet.js"></script>

	<!-- MapQuest online API -->
	<script src="http://www.mapquestapi.com/sdk/leaflet/v2.s/mq-map.js?key=GJ4oEUANXFZA0H8iCyzUzCVA1I3yAzPo"></script>

	<!-- Heatmap Library -->
	<script src="js/heatmap.js"></script>

	<!-- LeafPad-Heatmap Library, this should be right under heatmap.js -->
	<script src="js/leaflet-heatmap.js"></script>
	
	
	
	
</body>
</html>