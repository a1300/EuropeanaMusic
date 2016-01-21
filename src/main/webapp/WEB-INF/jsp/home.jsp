<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- newly added -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<title>Home - Europeana Music Channel</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" type="text/css" href="css/test.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	
	<!--   test 
	<spring:url value="/css/test.css" var="mycss" />
	<link href="${mycss}" rel="stylesheet" /> -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	<script src="js/parallax.js"></script>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/nosColonies.jpeg"></div>	
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>

	<!-- just testcontent -->
	<%@ include file="/WEB-INF/jsp/order/testContent.jsp" %>

</body>
</html>