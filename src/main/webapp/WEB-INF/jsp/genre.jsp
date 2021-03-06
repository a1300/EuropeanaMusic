<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Search - Europeana Music Channel</title>
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
</head>
<body>

	<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/art2.jpeg"></div>	
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>
	
	
	<form method="post" action="${model.pageName}" id="register">
	
	<!-- 	     <div class="container1" style=" float: left;position: relative;left: 50%;">
  			<div class="fixer-container" style="float: left;position: relative;left: -50%;">
	
	     	   <div style="float: center;text-align:center; padding-left:20px;">
		    	    <br>
		    	    	<div class="well well-sm">
		    	    		
		    	    	In this site you will get information about the rights of the songs in europeana and
		    	     	 you could hear a preview of the song (if the rights allow it).
		    	    	<p>The probability to get a preview of a song is higher by selecting "free use"</p>
		    	    	<p>If you want to get different versions of a song just write the name of the song leaving the Author empty.</p>
		    	    	
		    	    	</div>
		 </div></div></div>
		  -->
		  
		  
		  
		   <div class="container-fluid">
					<div class="well well-sm" style="text-align:center;">
		    	    	<p>In this site you can search for song of a particular genre</p>
		    	    </div>
			</div>
		  
		   
	    
		    <div class="form-group"  >
				<div class="row" style="padding-left:20px;padding-right:20px;">
				    	<div class="col-lg-6 "style="padding-left:20px;">
					    		<div > 
					    	    	    <label for="genre" style="float:left">Genre:</label>
				    	   	 			<input class="form-control" name="genre" id="genre" />
								</div>	    	   	 	
					    </div>
				</div>
			</div>	
		<br>
 			<div class="" id="send" style="float: left; padding-left:20px; width: 10px;">
 				<input class="btn btn-lg btn-success" type="submit" value="send"/>
 			</div>		
 		<br>
 		<br>
 		
 		<hr style="padding-left:20px; height: 3px; border: 0; border-top: 1px solid #ccc;">
	
	</form>
	
		<br/>
		<br/>
		<br/>
		
		
		<!-- still need to be edited
		<div class="container">
			<div class="row"> -->
	<c:choose>
		<c:when test="${not empty lists}">
			<ul>
					<c:forEach var="listValue" items="${lists}">
							<div class="col-lg-6 col-sm-12 well well-sm text-left">
									<div class="panel panel-primary">
											<div class="panel-heading">
												<c:forEach var="titeValue" items="${listValue.genre }">
														<p><b>Genre:</b> ${sub1}</p>
												</c:forEach>
											</div>
											<div class="panel-body panel-info">
											
														<c:forEach var="sub2" items="${listValue.country}">
															<p><b>Country:</b> ${sub2}</p>
														</c:forEach>
														
														<b>Link: </b>
														<div class="btn btn-info btn-sm">
															<a href="${listValue.url}" target="_blank">Europeana Link</a>
														</div>
													<c:choose>
							 							<c:when test="${not empty listValue.shownBy}">
															<c:forEach var="dataPVal" items="${listValue.shownBy}">
																	<b>Preview: </b>
																	<div class="btn btn-info btn-sm">
																		<a href="${dataPVal}" target="_blank">Link</a>
																	</div>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<p><b>Provider: </b><span class="label label-default" >...</span></p>
														</c:otherwise>
													</c:choose>
											</div>
									</div>
							</div>	
					</c:forEach>
			</ul>
		</c:when>
		
		<c:otherwise>
			<div style="text-align:center;">		
				<p><b> :(     Sorry, we didn't found any item for your search.     :( </b></p>
				<p>		(somewhere in the world a bunny has just cried... )</p>
			</div>
		</c:otherwise>
		
	</c:choose>
		
</body>
</html>
