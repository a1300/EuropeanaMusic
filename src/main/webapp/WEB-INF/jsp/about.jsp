<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

		<title>About Project</title>
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
</head>
<body>
	<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/nosColonies.jpeg"></div>
	

	<div class="panel panel-info">
  		<div class="panel-heading">
  			  <h3 class="panel-title"><b>Features</b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">
  			<b>This Project has the goal to visualise data in context of the Europeana-Project which is hosted on http://www.europeana.eu. Named entity recognition and mapping techniques are used to build an integrated representation of the collected data. Metadata have been taken from many different semantic web content providers in order to build and combine different entities to a final representation of different topics. We have followed an iterative and agile approach of building the system, like this we were able to make changes on every stage of this project so that we could ensure the best possible user experience. Following the original Europa-Project software development process we used User Stories to build a modular system.</b>	
 		 </div>
	</div>
	<div class="panel panel-warning">
  		<div class="panel-heading">
  			  <h3 class="panel-title"> <b> what does our project offer </b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">  		
  		<b>	User can search after "Title"<br/>
			User can search after "Author"<br/>
			User can search after "Language"<br/>
			User can search music from different "Countries"<br/>
			User can search after different terms of "Royalty"<br/>
 			User can search song in "mp3" format<br/>
			Visualize regional appearance of folklore music<br/>
		</b>
			
  			
	
 		 </div>
	</div>
	<div class="panel panel-primary">
  		<div class="panel-heading">
  			  <h3 class="panel-title"><b>api overview</b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">
  			<b>
  			This web application is structured for Restful API. Using Rest API we can access data directly from europeana collections. This data consists at the moment 48,738,306 artworks, artefacts, books, videos and sound from across Europe. Rest stands for Representational State Transfer and it relies on a stateless, client-server, cacheable communications protocol and in virtually all cases, the HTTP protocol is used. RESTful applications use HTTP requests to post data (create and/or update), read data (e.g., make queries), and delete data. Thus, REST uses HTTP for all four CRUD (Create/Read/Update/Delete) operations. 
  			</b>
	</div>
	<div class="panel panel-info">
  		<div class="panel-heading">
  			  <h3 class="panel-title"><b>summary</b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">
  			<b> Our task which we have fulfilled is to demonstrate technical functionalities of the Europeana Music Channel project. The activities which we have undertaken are the functions of Epic 1 as we have demonstrated the Epics of this project in our previous assignment. In addition to this we also have taken technical function from Epic 3, which visualises regional appearance of folklore music. For details of the each function which our web application offers you can take a look in objectives and features of this assignment. Further we had a misestimating programming with Java. We‘ve started programming with java very late which brought us into full time pressure and panicked us in case of uncomplete of the project, but somehow we all three members were managed to invest our whole last week (day/night) with this project and were finally able to finish it. </b>	
 		 </div>
	</div>
	<div class="panel panel-success">
  		<div class="panel-heading">
  			  <h3 class="panel-title"><b>activities per person</b></h3>
  		</div>
  		<div class="panel-body panel-info text-center">
  			<b> The major work this time for us was to implement our previous work into Java with professional touches. The technologies which we have use for our project are Spring MVC, Maven, Bootstrap, JSP, jQuery, JSON and the Europeana API to get the information directly from the Europeana data base.<br/>
For the heatmap site, we used leaflet.js to build a tile map. For the provider of geographical content we choose to go with MapQuest. The heatmap visualisation contributed heatmap.js.<br/>
This time all three of us had physically intensive team work for implementing the project in Java. <br/>
Matthias prepared the heatmap so that we should only bring information inside and finished the search option with jQuery, he configured MVC and took part on programing. <br/>
Ricardo was working mostly with API Key to program the Get and Post Response method in order to access the data directly from europeana lab and he made navigation bar. <br/>
Umair worked with different configurations of the project in java and designed pages of web application and took part on programing.
  			 </b>
 		 </div>
	</div>
</body>
</html>