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
	
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/nosColonies.jpeg"></div>	
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>
	
	
	<form method="post" action="${model.pageName}" id="register">
	    <div>
		    <div class="form-group">
	    	    <label for="name">Author:</label>
	    	    <input class="form-control" name="name" id="name" />
	    	    <br/>
		    </div>
		    <div class="form-group">
		   		<label for="title">Title:</label>
		    	<input class="form-control" name="title" id="title" />
		    	<br>
			</div>
       </div> 	
	</form>
	
		<br/>
		<br/>
		<br/>
		
		<div class="container">
			<div class="row">
				<c:if test="${not empty lists}">
					<ul>
						<c:forEach var="listValue" items="${lists}">
							<div class="col-lg-6 col-sm-12 well well-sm text-left">
								<p>${listValue.name}</p>
								<c:forEach var="sub" items="${listValue.titel}">
									<p>${sub}</p>
								</c:forEach>
								<br/>
							</div>
						</c:forEach>
					</ul>
				</c:if>
			</div>
		</div>
		
 	
</body>
</html>