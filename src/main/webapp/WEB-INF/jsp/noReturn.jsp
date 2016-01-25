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
	    
	      <div class="container-fluid">
					<div class="well well-sm" style="text-align:center;">
		    		    	    		
					    	    	<p>In this site you will get information about the rights of the songs in europeana and
					    	     	 you could hear a preview of the song (if the rights allow it).</p>
					    	    	<p>The probability to get a preview of a song is higher by selecting "free use"</p>
		    	    </div>
		   </div>
		 
		 
		 <div class="form-group"  >
				<div class="row" style="padding-left:20px;padding-right:20px;">
				    	<div class="col-lg-6 "style="padding-left:20px;">
					  		    <p>Title:		</p>
				    		    <input class="form-control" name="title" id="title" />
						</div>
			
						<div class="col-lg-6 "style="padding-left:20px;">
									<br>
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
				</div>
			</div>	
 		
 			
 			<div id="send" style="float: left; padding-left:20px; width: 10px;">
 				<input class="btn btn-lg btn-success" type="submit" value="send"/>
 			</div>
 			<br>
 			<br>
 			
 		<hr style="padding-left:20px; height: 3px; border: 0; border-top: 1px solid #ccc;">
	
	</form>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
	<!--  here comes the data -->
	<c:if test="${not empty lists}">
		<ul>
			<c:forEach var="listValue" items="${lists}">
				<div class="col-lg-6 col-sm-12 well well-sm text-left">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<c:forEach var="titleValue" items="${listValue.title}">
								<h5><b>${titleValue}</b></h5>
							</c:forEach>
						</div>
	 					<div class="panel-body panel-info">
	 						
							
							<!-- ShownBy START -->
							<c:choose>
	 							<c:when test="${not empty listValue.shownBy}">
									<c:forEach var="dataPVal" items="${listValue.shownBy}">
										<span class="form-group">
											<b>ShownBy: </b>
											<div class="btn btn-info btn-sm inline">
												<a href="${dataPVal}">Link</a>
											</div>
										</span>
									</c:forEach>
									<br/>
								</c:when>
								<c:otherwise>
									<p><b>DataProvider: </b><span class="label label-default">...</span></p>
								</c:otherwise>
							</c:choose>
							<!-- ShownBy END -->
							
							
							<!-- Data Provider Start -->
							<c:choose>
	 							<c:when test="${not empty listValue.dataProvider}">
									<c:forEach var="dataPVal" items="${listValue.dataProvider}">
										<span class="form-group">
											<p><b>Data Provider: </b>${dataPVal}</p>
										</span>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<p><b>DataProvider: </b><span class="label label-default">...</span></p>
								</c:otherwise>
							</c:choose>
							<!-- Data Provider END -->
							
							
							<!-- Rights Start -->
							<c:choose>
	 							<c:when test="${not empty listValue.rights}">
									<c:forEach var="dataPVal" items="${listValue.rights}">
										<span class="form-group">
											<b>Rights: </b>
											<div class="btn btn-info btn-sm inline">
												<a href="${dataPVal}">Link</a>
											</div>
										</span>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<p><b>DataProvider: </b><span class="label label-default">...</span></p>
								</c:otherwise>
							</c:choose>
							<!-- Rights END -->
								
						</div>
					</div>
				</div>
			</c:forEach>
		</ul>
	</c:if>
	<!-- data end -->


</body>
</html>