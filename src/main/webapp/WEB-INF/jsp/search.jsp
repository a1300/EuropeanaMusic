<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	

	<form:form method="post" commandName="somedata">
	    <table>
	    <tr>
	        <td>name</td>
	        <td><form:input path="name" /></td>
	    </tr>
	    <tr>
	        <td colspan="2">
	            <input type="submit" value="send"/>
	        </td>
	    </tr>
	</table>
	</form:form>
	 
	<table>
	    <tr>
	        <td>name</td>
	        <td>${somedata.name}</td>
	    </tr>
 	</table>
 	
 	
</body>
</html>