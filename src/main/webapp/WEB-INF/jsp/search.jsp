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
		    	    <p>Author:		</p>
		    	    <input name="name" id="name" />
		   		<br>
		    	<br>
		    </div>    
		        
		    <div id="single-field" style="float: left; width: 200px;">
		    	    <p>Title:		</p>
		    	    <input name="title" id="title" />
		    	<br>
				<br>
			</div>
			
           	<div id="language" class="language" style="float: left; width: 400px;">
			
					<p>Language:		</p>
		        
					<label class="checkbox-inline">
  						<input type="checkbox" name="language" value="english" 	id="language"> English
					</label>
					<label class="checkbox-inline">
					  	<input type="checkbox" name="language" value="german" 	id="language"> German
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="language" value="french" 	id="language"> French
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="language" value="spanish"	id="language"> Spanish
					</label>
								
 				<br>	
			</div>
			
			<div id="country" class="country" style="float: left; width: 400px;">
			
					<p>Country:		</p>
		        
					<label class="checkbox-inline">
  						<input type="checkbox" name="country" value="england" 	id="country"> England
					</label>
					<label class="checkbox-inline">
					  	<input type="checkbox" name="country" value="germany" 	id="country"> Germany
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="country" value="france" 	id="country"> France
					</label>
					<label class="checkbox-inline">
	 	 				<input type="checkbox" name="country" value="spain"	id="country"> Spain
					</label>
								
 				<br>	
 				<br>	
			</div>
			
			<div id="royalty" class="royalty" style="float: left; width: 400px;">
			
					<p>Can i use it? :		</p>
		        
					<label class="checkbox-inline">
  						<input type="checkbox" name="country" value="open" 	id="country"> For free
					</label>
					<label class="checkbox-inline">
  						<input type="checkbox" name="country" value="restricted" 	id="country"> For free giving credit to the author
					</label>
					<label class="checkbox-inline">
  						<input type="checkbox" name="country" value="permission" 	id="country"> only with explicit permission
					</label>
			</div>
		
		
		</div>
 				<br><br><br><br><br><br><br><br>
 		<div id="send" style="float: left; padding-left:20px; width: 100px;">
 			<input type="submit" value="send"/>
 		</div>		
 		
 		<hr>
		
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