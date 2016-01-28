<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Heatmap - Europeana Music Channel</title>
	
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
	
</head>
<body>
	
	<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	<script src="js/parallax.js"></script>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/heatmapPic.jpg"></div>
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>


	<!-- heatmap -->
	<%@ include file="/WEB-INF/jsp/order/heatmapDependency.jsp" %>
	

	
	<!-- Form start -->
	<div class="container">
	
		<form class="form text-center" method="post" action="${model.pageName}" id="register">
			
			<div class="row">
				<div class="form-group">
		    	    <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
		    	    	<label class="pull-left" for="search">Search:</label>
		    	    	<!-- if you don't specify a string, then -->
		    	    	<input type="text" class="form-control" name="search" id="search" placeholder="e.g. Folklore" />
		    	    </div>
		    	 </div>
	    	 </div>
	    	 
	    	 <div class="row">
	    	 	<div class="col-md-4 col-sm-12 col-xs-12">
			    	<div class="form-group">
			    	 	<!-- radio -->
			   	    	<label class="radio-inline">
							<input type="radio" name="contentType" value="IMAGE" checked>IMAGE
						</label>
						<label class="radio-inline">
			 				<input type="radio" name="contentType" value="SOUND">SOUND
						</label>
						<label class="radio-inline">
			 				<input type="radio" name="contentType" value="TEXT">TEXT
						</label>
			    	 </div>
			    	 
			    	 <!-- buttons -->
			    	 <div class="form-group">
			    	 	<button type="submit" class="btn btn-lg btn-primary btn-block">Search</button>
			   	    	<!-- <button type="submit" class="btn btn-lg btn-success btn-block">Default Search</button>-->
			    	 </div>
			    	 
		    	 </div><!-- end allignment -->
	    	 </div> <!-- class row -->
	    	    
		</form>
		
	</div> <!-- end div class="container" -->
	<!-- Form end -->



	
	
	<!-- start reading data into javascript variable from java bean -->
	<script>
		var testVal = {
            max: 8,
            //data: [ { lat: 50.6408, lng: 10.7728, count: 3 } ]
			data: []
		};
		
		var displayMarker = false;
	</script>
	
	<!-- test -->
	<c:if test="${result.hasResults == false}">
		<script>
			//now it should display a marker!
			var displayMarker = true;
		</script>
	</c:if>
	
	<c:if test="${not empty lists}">
		<ul>
			<script>
				console.log("testOutput:");
				console.log(testVal.data);
				//testVal.data.length = 0; //setting to 0
			</script>
		
			<c:forEach var="listValue" items="${lists}">
				<script>
					testVal.data.push({lat: "${listValue.latitude}",
										  lng: "${listValue.longitude}",
										  count: "${listValue.count}"}
										);
				</script>
				<br/>
			</c:forEach>
		</ul>
	</c:if>
	<!-- read data from bean -->
	
	<!-- drawing data into heatmap, must be after heatmapDependency.jsp import -->
	<script>
    
		var testData = {
            max: 8, //was soll das?
            data: [ { lat: 24.6408, lng: 46.7728, count: 3 },
                    { lat: 50.75, lng: -1.55, count: 1 },
                    { lat: 50.26, lng: -1.79, count: 1 },
                    { lat: 50.45, lng: -1.89, count: 1 }
        ]};

        var cfg = {
            // radius should be small ONLY if scaleRadius is true (or small radius is intended)
            // if scaleRadius is false it will be the constant radius used in pixels
            "radius": 2,
            "maxOpacity": .8,
            // scales the radius based on map zoom
            "scaleRadius": true,
            // if set to false the heatmap uses the global maximum for colorization
            // if activated: uses the data maximum within the current map boundaries 
            //   (there will always be a red spot with useLocalExtremas true)
            "useLocalExtrema": true,
            // which field name in your data represents the latitude - default "lat"
            latField: 'lat',
            // which field name in your data represents the longitude - default "lng"
            lngField: 'lng',
            // which field name in your data represents the data value - default "value"
            valueField: 'count'
        };
        var heatmapLayer = new HeatmapOverlay(cfg);


	    var mapLayer = MQ.darkLayer(), map;

	    map = L.map('map', {
	        layers: [mapLayer, heatmapLayer],
		    center: [ 52.731701, 15.993411 ],
		    zoom: 4
	    });

	    //heatmapLayer.setData(testData); //before
		heatmapLayer.setData(testVal);
	    
	    L.control.layers({
		    'Dark': mapLayer,
		    'Map': MQ.mapLayer(),
		    'Light': MQ.lightLayer(),
		    'Satellite': MQ.satelliteLayer()
	    }).addTo(map);

	    if(displayMarker === true) {
	    	var marker = L.marker([51.731701, 0.0]).addTo(map);
	    	marker.bindPopup("<b>No Results</b>").openPopup();
	    }
	</script>

</body>
</html>