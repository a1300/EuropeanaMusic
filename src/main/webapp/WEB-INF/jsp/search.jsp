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

	
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/art4.jpg"></div>	
	
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
			
           	<div  class="radio-inline" data-toggle="buttons-radio" style="float: left;padding-left:20px width: 350px;">
					<p>Language:		</p>
		        	<label class="radio-inline">
  						<input type="radio" name="radioLang" value="en" 	id="languageEnglish"> English
					</label>
					<label class="radio-inline">
					  	<input type="radio" name="radioLang" value="de" 	id="languageGerman"> German
					</label>
					<label class="radio-inline">
	 	 				<input type="radio" name="radioLang" value="fr" 	id="languageFrench"> French
					</label>
					<label class="radio-inline">
	 	 				<input type="radio" name="radioLang" value="es"	id="languageSpanish"> Spanish
					</label>
 				<br>	
			</div>
			
			<div id="country" class="country" style="float: left;padding-left:20px; width: 400px;">
					<p>Country:		</p>
					<label class="radio-inline">
  						<input type="radio" name="radioCoun" value="austria"> Austria
					</label>
					<label class="radio-inline">
					  	<input type="radio" name="radioCoun" value="germany"> Germany
					</label>
					<label class="radio-inline">
	 	 				<input type="radio" name="radioCoun" value="france"> France
					</label>
					<label class="radio-inline">
	 	 				<input type="radio" name="radioCoun" value="spain"> Spain
					</label>
 				<br><br>	
			</div>

				<br><br><br><br>			
 			<div id="send" style="float: left; padding-left:20px; width: 10px;">
 				<input class="btn btn-lg btn-success" type="submit" value="send"/>
 			</div>		
 		<br/>
 		<br/>
 		<br/>
 		
 		<hr style="padding-left:20px; height: 3px; border: 0; border-top: 1px solid #ccc;">
	
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
					
								
								<c:forEach var="sub" items="${listValue.name}">
									<p>
										<h4><span class="label label-default">creator:</span>  ${sub}</h4>
									</p>
								</c:forEach>
								
								<c:forEach var="sub2" items="${listValue.collection}">
									<p><b>collection:</b> ${sub2}</p>
								</c:forEach>
								
								<c:forEach var="sub4" items="${listValue.title}">
									<p><b>title:</b> ${sub4}</p>
								</c:forEach>
								
								<div class="btn btn-info btn-sm">
									<a href="${listValue.url}" target="_blank">Europeana Link</a>
								</div>
								
								<div class="btn btn-info btn-sm">
									<c:forEach var="sub3" items="${listValue.shownBy}">
										<a href="${sub3}" target="_blank">Preview</a>
									</c:forEach>
								</div>
					
								
							</div>
						</c:forEach>
					</ul>
				</c:if>
			</div>
		</div>
		
</body>
</html>