<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Insert title here</title>
	
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<%@ include file="/WEB-INF/jsp/order/stylesheets.jsp" %>
	
</head>
<body>
	
	<!--  jQuery.js and Bootstrap.js -->
	<%@ include file="/WEB-INF/jsp/order/scripts.jsp" %>

	<script src="js/parallax.js"></script>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/sm_dig10622.jpg"></div>
	
	<!-- navbar -->
	<%@ include file="/WEB-INF/jsp/order/navbar.jsp" %>


	<!-- import -->
	<!-- For Leaflet Library -->
	<link rel="stylesheet" href="js/leaflet-library/leaflet.css" />
	<script src="js/leaflet-library/leaflet.js"></script>

	<!-- MapQuest online API -->
	<script src="http://www.mapquestapi.com/sdk/leaflet/v2.s/mq-map.js?key=GJ4oEUANXFZA0H8iCyzUzCVA1I3yAzPo"></script>

	<!-- Heatmap Library -->
	<script src="js/heatmap.js"></script>

	<!-- LeafPad-Heatmap Library, this should be right under heatmap.js -->
	<script src="js/leaflet-heatmap.js"></script>
	
	
	<!-- import2 -->
	<h3>Heatmap</h3>
	
	

	<div id="map" style="
		height: 350px;
   		width: 80%;
    	margin-left:10%;
    	opacity:1;">
	</div>
	
	<script>
    
        //test
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
		    center: [ 40.731701, -73.993411 ],
		    zoom: 2
	    });

	    heatmapLayer.setData(testData);

	    L.control.layers({
		    'Dark': mapLayer,
		    'Map': MQ.mapLayer(),
		    'Light': MQ.lightLayer(),
		    'Satellite': MQ.satelliteLayer()
	    }).addTo(map);

	    var marker = L.marker([40.731701, -73.993411]).addTo(map);

	</script>

	
	
	
	
</body>
</html>