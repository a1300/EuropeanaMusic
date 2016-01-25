<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<title>Home - Europeana Music Channel</title>
	
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	
</head>
<body>

	<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/art3.jpg"></div>
	

<div class="panel panel-info">
  		<div class="panel-heading">
  			  <h3 class="panel-title"><b>HEATMAP</b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">
  			<b>Here you will find the function of Visualize regional appearance of folklore music<br /> 
  			This function is taken from EPIC 3!
  			</b>	
 		 </div>
	</div>
	<div class="panel panel-warning">
  		<div class="panel-heading">
  			  <h3 class="panel-title"> <b> SEARCH </b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">  		
  		<b>	In search page you will find the search filter which offers you search functionalities of our web application in different ways.<br/>
		These search functions were taken from EPIC 1!
		</b>
 		 </div>
	
	</div>
	
	<div class="panel panel-primary">
  		<div class="panel-heading">
  			  <h3 class="panel-title"><b>RoyaltyFree</b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">
  			<b>
  			This page provides very special functions in order to see different rights of music. 
  			</b>
	</div>
	<div class="panel panel-info">
  		<div class="panel-heading">
  			  <h3 class="panel-title"><b>About</b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">
  			<b> Here you will all details about our project like Feature, Functions, API Overview, Summary amd Activities per person.</b>	
 		 </div>
	</div>
	</div>

	
</body>
</html>