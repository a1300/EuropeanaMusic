<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- newly added -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<title>Europeana Music Channel</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<!--<link rel="stylesheet" type="text/css" href="css/test.css" /> -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	
	<!--  test -->
	<spring:url value="/css/test.css" var="mycss" />
	<link href="${mycss}" rel="stylesheet" />
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
</head>
<body>

	<!-- for backwards compatibility -->
	<!-- [if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
	<![endif]-->
	
	<script src="js/jquery-1.9.1.js"></script>
	<script src="js/bootstrap.js"></script>

	<!-- test -->
	<script src="js/parallax.js"></script>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/logoGross.jpeg">
	</div>
	
	<!--navbar start -->
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">
		  	<img alt="Brand" src="img/logoKlein.jpeg" height="20" width="16.2">
		  </a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    <ul class="nav navbar-nav">
			<li class="active"><a href="/index.html">Home</a></li>
			<li ><a href="/heatmap.html">Heatmap</a></li>	
	   	 </ul>
    	<ul class="nav navbar-nav navbar-right">
		<li><a href="#">Copyright</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<!--navbar end -->



	<h1>This is index.html</h1>
	<h2>Special greeting from css</h2>
	<a href="/EuropeanaMusic/heatmap.html">Link to heatmap</a>
	<!-- <h1>${greeting}</h1> -->
	
	


</body>
</html>