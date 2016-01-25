<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>RoyaltyFree - Europeana Music Channel</title>
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
</head>
<body>

<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/art1.png"></div>	
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>


	<form method="post" action="${model.pageName}" id="register">
	    
	     <div class="container1" style=" float: left;position: relative;left: 50%;">
  			<div class="fixer-container" style="float: left;position: relative;left: -50%;">
	
	     	   <div style="float: center;text-align:center; padding-left:20px;">
		    	    <br>
		    	    	<div class="well well-sm">
		    	    		
		    	    	In this site you will get information about the rights of the songs in europeana and
		    	     	 you could hear a preview of the song (if the rights allow it).
		    	    	<p>The probability to get a preview of a song is higher by selecting "free use"</p>
		    	    	</div>
		 </div></div></div>
		 
		   <br><br><br><br><br> 
		
		    <div id="single-field" style="float: left;padding-left:20px; maring-right: 50px; width: 350px;">
		   		    <p>Title:		</p>
		    	    <input class="form-control" name="title" id="title" />
			</div>
			
           	<div id="royalty" class="royalty well well-sm" style="float: right; padding-right:20px; ">
			
					<p>
						<h4>
							<span class="label label-info">
								Can i use it? :
							</span>
						</h4>
					</p>
		        	<label class="radio-inline" style="width:250;">
  						<input type="radio" name="reusability" value="open" checked>Free use
					</label>
					<label class="radio-inline" style="width:250;">
  						<input type="radio" name="reusability" value="restricted">Free use, giving credit to the author
					</label>
					<label class="radio-inline" style="width:250;">
  						<input type="radio" name="reusability" value="permission">only with explicit permission
					</label>
			</div>
		
 		
 				<br><br><br><br>
 			<div id="send" style="float: left; padding-left:20px; width: 100px;">
 				<input class="btn btn-lg btn-primary" type="submit" value="send"/>
 			</div>
 			
 		<br>
 		<br>
 		<br>
 		
 		<hr style="padding-left:20px; height: 3px; border: 0; border-top: 1px solid #ccc;">
	
	</form>
	
	
	<!--  here are coming the data -->
	<c:if test="${not empty lists}">
		<ul>
			<c:forEach var="listValue" items="${lists}">
				<div class="col-lg-6 col-sm-12 well well-sm text-left">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<c:forEach var="titleValue" items="${listValue.title}">
								<p>${titleValue}</p>
							</c:forEach>
						</div>
	 					<div class="panel-body panel-info">
	 						<c:choose>
	 							<c:when test="${not empty listValue.shownBy}">
									<p><b>shownBy:</b> ${listValue.shownBy}</p>
								</c:when>
								<c:otherwise>
									<p><b>ShownBy: </b><span class="label label-default">...</span></p>
								</c:otherwise>
							</c:choose>
							<c:choose>
	 							<c:when test="${not empty listValue.dataProvider}">
									<p><b>DataProvider:</b> ${listValue.dataProvider}</p>
								</c:when>
								<c:otherwise>
									<p><b>DataProvider: </b><span class="label label-default">...</span></p>
								</c:otherwise>
							</c:choose>
							<c:choose>
	 							<c:when test="${not empty listValue.rights}">
									<p><b>Rights:</b> ${listValue.rights}</p>
								</c:when>
								<c:otherwise>
									<p><b>Rights: </b><span class="label label-default">...</span></p>
								</c:otherwise>
							</c:choose>
							
						</div>
					</div>
				</div>
			</c:forEach>
		</ul>
	</c:if>



</body>
</html>