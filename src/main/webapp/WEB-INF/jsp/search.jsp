<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	
	
	<form method="post" action="${model.pageName}" id="register">
	    
	    <div>
		    <div id="single-field" style="float: left; padding-left:20px; width: 200px;">
		    	    <p>author:		</p>
		    	    <input name="name" id="name" />
		   		<br>
		    	<br>
		    </div>    
		        
		    <div id="single-field" style="float: left; width: 200px;">
		    	    <p>title:		</p>
		    	    <input name="title" id="title" />
		    	<br>
				<br>
			</div>
			
           	<div id="language" class="language" style="float: left; width: 110px;">
			
		        <p>language:		</p>
		        	<input type="checkbox" name="language" value="english" 	id="language">	English	<br>
					<input type="checkbox" name="language" value="german" 	id="language">	German	<br>
            		<input type="checkbox" name="language" value="french" 	id="language">	French	<br>
            		<input type="checkbox" name="language" value="spanish"	id="language">	Spanish	<br>
 				<br>	
			</div>
			
			<div id="country" class="country" style="float: left; width: 110px;">
			    <p>country:		</p>
		        
           			<input type="checkbox" name="language" value="english" 	id="language">	English	<br>
					<input type="checkbox" name="language" value="german" 	id="language">	German	<br>
            		<input type="checkbox" name="language" value="french" 	id="language">	French	<br>
            		<input type="checkbox" name="language" value="spanish"	id="language">	Spanish	<br>
 				<br>
 			</div>
 		</div>
 				<br><br><br><br><br><br><br><br>
 		<div id="send" style="float: left; padding-left:20px; width: 100px;">
 			<input type="submit" value="send"/>
 		</div>		
		
	</form>
	

	
	<!--  sehr gut ein jsp include machen, wo alles angezeigt wird --> 
	<table>
	    <tr>
	        <td>Results:</td>
	    </tr>
	    <tr>
	    	<td>${message}</td>
	    </tr>
 	</table>
 	
 	
</body>
</html>