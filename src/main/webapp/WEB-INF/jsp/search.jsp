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
		    <div id="single-field" style="float: left; padding-left:20px; width: 200px;">
		    	    <p>Author:		</p>
		    	    <input name="name" id="name" />
		   		<br><br>
		    </div>    
		        
		    <div id="single-field" style="float: left; width: 200px;">
		    	    <p>Title:		</p>
		    	    <input name="title" id="title" />
		    	<br><br>
			</div>
			
           	<div  class="language" style="float: left; width: 400px;">
					<p>Language:		</p>
		        	<label class="checkbox-inline">
  						<input type="checkbox" name="languageEnglish" value="languageEnglish" 	id="languageEnglish"> English
					</label>
					<label class="checkbox-inline">
					  	<input type="checkbox" name="languageGerman" value="languageGerman" 	id="languageGerman"> German
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="languageFrench" value="languageFrench" 	id="languageFrench"> French
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="languageSpanish" value="languageSpanish"	id="languageSpanish"> Spanish
					</label>
 				<br>	
			</div>
			
			<div id="country" class="country" style="float: left; width: 400px;">
					<p>Country:		</p>
					<label class="checkbox-inline">
  						<input type="checkbox" name="countryEngland" value="countryEngland" 	id="countryEngland"> England
					</label>
					<label class="checkbox-inline">
					  	<input type="checkbox" name="countryGermany" value="countryGermany" 	id="countryGermany"> Germany
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="countryFrance" value="countryFrance" 	id="countryFrance"> France
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="countrySpain" value="countrySpain"	id="countrySpain"> Spain
					</label>
 				<br><br>	
			</div>
			
			<div id="royalty" class="royalty" style="float: left; width: 600px;">
			
					<p>Can i use it? :		</p>
		        
					<label class="checkbox-inline">
  						<input type="checkbox" name="royaltyOpen" value="open" 			id="royaltyOpen">Free use
					</label>
					<label class="checkbox-inline">
  						<input type="checkbox" name="royaltyRestricted" value="restricted" 	id="royaltyRestricted">Free use, giving credit to the author
					</label>
					<label class="checkbox-inline">
  						<input type="checkbox" name="royaltyPermission" value="permission" 	id="royaltyPermission"> only with explicit permission
					</label>
			</div>
		
		
		</div>
 				<br><br><br><br><br><br><br><br>
 			<div id="send" style="float: left; padding-left:20px; width: 100px;">
 				<input class="btn btn-primary btn-lg" type="submit" value="send"/>
 			</div>		
 		<br>
 		
 		<hr style="padding-left:20px; height: 3px; border: 0; border-top: 1px solid #ccc;">
	
	</form>
	
		
		<c:if test="${not empty lists}">
			<ul>
				<c:forEach var="listValue" items="${lists}">
						<p>${listValue.name}</p>
						<c:forEach var="sub" items="${listValue.titel}">
							<p>${sub}</p>
						</c:forEach>
					<br/>
				</c:forEach>
			</ul>
		</c:if>
		
 	
</body>
</html>