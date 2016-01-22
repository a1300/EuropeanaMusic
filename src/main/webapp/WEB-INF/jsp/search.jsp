<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Search - Europeana Music</title>
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
</head>
<body>

	<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/nosColonies.jpeg"></div>	
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>
	
	<br/>
	<br/>
	<br/>
	
	
	<form method="post" action="${model.pageName}" id="register">
	    <table>
		    <tr>
		        <td>name</td>
		        <td><input name="name" id="name" /></td>
		    </tr>
		    <tr>
		        <td colspan="2">
		            <input type="submit" value="send"/>
		        </td>
		    </tr>
		</table>
	</form>
	

	
	<!--  sehr gut ein jsp include machen, wo alles angezeigt wird --> 
	<table>
	    <tr>
	        <td>Results:</td>
	    </tr>
	    <tr>
	    	<td>${message}</td>
	    </tr>
 	</table>
 	
 	
</body>
</html>