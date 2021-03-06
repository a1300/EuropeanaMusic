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
	
		   <div class="container-fluid">
					<div class="well well-sm" style="text-align:center;">
		    	    	
		    	    	<p>In this site you will get information about the rights of the songs in europeana and
		    	     	you could hear a preview of the song (if the rights allow it).</p>
		    	    	<p>The probability to get a preview of a song is higher by selecting "free use".</p>
		    	    	<p>If you want to get different versions of a song just write the name of the song leaving the Author empty.</p>
		    	    </div>
			</div>
		  
		   
	    
		    <div class="form-group"  >
				<div class="row" style="padding-left:20px;padding-right:20px;">
				    	<div class="col-lg-6 "style="padding-left:20px;">
					    		<div > 
					    	    	    <label for="name" style="float:left">Author:</label>
				    	   	 			<input class="form-control" name="name" id="name" />
								</div>	    	   	 	
					    		<br>
				    			<div>
				    						<label for="title">Title:</label>
					    					<input class="form-control" name="title" id="title" />
								</div>
						</div>	
						<div class="col-mg-6 "style="padding-left:20px;">
					    
								<div  class="radio-inline" data-toggle="buttons-radio" style="float: left;padding-left:20px">
										<br>
										<p><b>Language:	</b>	</p>
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
					 					
								</div>
								
								<div id="country" class="country" style="float: left;padding-left:20px; ">
								<br>
										<p><b>Country:	</b>	</p>
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
		
		<c:choose>
			<c:when test="${not empty lists}">
					<ul>
						<c:forEach var="listValue" items="${lists}">
								<div class="col-lg-6 col-sm-12 well well-sm text-left">
									<div class="panel panel-primary">
											<div class="panel-heading">
												<c:forEach var="sub" items="${listValue.name}">
													<p><b>creator:</b>  ${sub}</p>
												</c:forEach>
											</div>	
											<div class="panel-body panel-info">
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