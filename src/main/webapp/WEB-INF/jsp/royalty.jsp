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
		    	    	<p>In this site you will get information about the rights of the songs in europeana and
		    	     	 you could hear a preview of the song (if the rights allow it).	</p>
		    	    	<p>The probability to get a preview of a song is higher by selecting "free use"</p>
		 </div></div></div>
		 
		   <br><br><br><br><br>  
		
		    <div id="single-field" style="float: left;padding-left:20px; width: 350px;">
		   		    <p>Title:		</p>
		    	    <input name="title" id="title" />
			</div>
			
           	<div id="royalty" class="royalty" style="float: right; padding-right:20px; ">
			
					<p>Can i use it? :		</p>
		        	<label class="radio-inline" style="width:250;">
  						<input type="radio" name="inlineRadioOptions" value="open" 				id="royaltyOpen">Free use
					</label>
					<label class="radio-inline" style="width:250;">
  						<input type="radio" name="inlineRadioOptions" value="restricted" 	id="royaltyRestricted">Free use, giving credit to the author
					</label>
					<label class="radio-inline" style="width:250;">
  						<input type="radio" name="inlineRadioOptions" value="permission" 	id="royaltyPermission"> only with explicit permission
					</label>
			</div>
		
 		
 				<br><br><br><br>
 			<div id="send" style="float: left; padding-left:20px; width: 100px;">
 				<input type="submit" value="send"/>
 			</div>		
 		
 		<br>
 		
 		<hr style="padding-left:20px; height: 3px; border: 0; border-top: 1px solid #ccc;">
	
	</form>



</body>
</html>