package eu.europeana.controller;
import java.io.IOException;
import java.util.Random;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eu.europeana.api.client.EuropeanaApi2Client;
import eu.europeana.api.client.exception.EuropeanaApiProblem;
import eu.europeana.api.client.model.EuropeanaApi2Results;
import eu.europeana.api.client.model.search.EuropeanaApi2Item;
import eu.europeana.api.client.search.query.Api2Query;
import eu.europeana.api.client.search.query.EuropeanaComplexQuery;
import eu.europeana.model.LongLat;
import eu.europeana.model.Results;

@Controller
public class HeatmapController {

	@RequestMapping(value="/heatmap", method=RequestMethod.GET)
	public ModelAndView getHeatmap() {
		
		ModelAndView mav = new ModelAndView("heatmap");
		
		List<LongLat> list =  beethovenImage();
		mav.addObject("lists", list);
		
		//test
		if(list.size() == 0) {
			mav.addObject("result", new Results(false));
		}
		
		return mav;
	}
	
	@RequestMapping(value="/heatmap", method=RequestMethod.POST)
	public ModelAndView postHeatmap(
			@RequestParam(value = "search") String search,
			@RequestParam(value = "contentType", required = false) String contentType,
			HttpServletRequest request) {
	
		//testoutput
		System.out.println("serach: " + request.getParameter("search"));
		System.out.println("contentType: " + request.getParameter("contentType"));
		System.out.println(EuropeanaComplexQuery.TYPE.SOUND);
		System.out.println(EuropeanaComplexQuery.TYPE.IMAGE);
		System.out.println(EuropeanaComplexQuery.TYPE.TEXT);
		
		
		
		List<String> paramList = new ArrayList<String>();
		paramList.add(request.getParameter("search"));
		paramList.add(request.getParameter(request.getParameter("contentType")));
		
		
		//make the query
		Api2Query europeanaQuery  = new Api2Query();
		europeanaQuery.setTitle(search);	// i changed setTitle() for setAuthor to make a query that is valid. 
											// I already saw the query that we get changing to author and is valid. 
		europeanaQuery.setProfile("rich");

		//latitude for Europe
		europeanaQuery.setWholeSubQuery("pl_wgs84_pos_lat%3A%5B20+TO+70%5D");
		
		
		String content = request.getParameter("contentType");
		if(content.trim().equals(EuropeanaComplexQuery.TYPE.IMAGE)) {
			europeanaQuery.setType(content);
		}
		if(content.trim().equals(EuropeanaComplexQuery.TYPE.SOUND)) {
			europeanaQuery.setType(content);
		}
		if(content.trim().equals(EuropeanaComplexQuery.TYPE.TEXT)) {
			europeanaQuery.setType(content);
		}
		
//		//Here set the longitude and latitiude min and max
//		europeanaQuery.setEdmPlaceLatitudeMax("80");
//		europeanaQuery.setEdmPlaceLatitudeMin("30");
//		europeanaQuery.setEdmPlaceLongitudeMax("80");
//		europeanaQuery.setEdmPlaceLongitudeMin("20");
		
		EuropeanaApi2Client europeanaClient = new EuropeanaApi2Client();
		System.out.println("get sub queries "+europeanaQuery.getSubQueries());
	
		
		EuropeanaApi2Results results = new EuropeanaApi2Results();
		try{
			results = europeanaClient.searchApi2(europeanaQuery, 10000, 1);
		} catch(IOException e) {
			e.printStackTrace();
		} catch(EuropeanaApiProblem e1) {
			e1.printStackTrace();
		}
		
		
		List<LongLat> list = new ArrayList<LongLat>();
		
		
		ModelAndView mav = new ModelAndView("heatmap");
		
		
		if(results.getAllItems().size() == 0) {
			System.out.println("Size of List is 0");
			mav.addObject("result", new Results(false));
		} else {		
			for (EuropeanaApi2Item item: results.getAllItems()) {
				try {
					list.add(new LongLat(
							Double.parseDouble(item.getEdmPlaceLatitude().get(0)),
							Double.parseDouble(item.getEdmPlaceLongitude().get(0)),
							1.0  
						));
				} catch(NumberFormatException nfe) {
					System.out.println("Number format exception");
				}
				//System.out.println("latitude : " + item.getEdmPlaceLatitude());
				//System.out.println("longitude : " + item.getEdmPlaceLongitude());

			}
		}

		
		mav.addObject("lists", list);
		
		return mav;
	}
	
	
	//a http-GET default visualisation
	public List<LongLat> beethovenImage() {
		
		
		Api2Query europeanaQuery  = new Api2Query();
		europeanaQuery.setTitle("Beethoven");  
		europeanaQuery.setProfile("rich");
		europeanaQuery.setType(EuropeanaComplexQuery.TYPE.IMAGE);
		
		//latitude for Europe
		europeanaQuery.setWholeSubQuery("pl_wgs84_pos_lat%3A%5B20+TO+70%5D");
		
		EuropeanaApi2Client europeanaClient = new EuropeanaApi2Client();
		EuropeanaApi2Results results = new EuropeanaApi2Results();
		try{
			results = europeanaClient.searchApi2(europeanaQuery, 10000, 1);
		} catch(IOException e) {
			e.printStackTrace();
		} catch(EuropeanaApiProblem e1) {
			e1.printStackTrace();
		}
		
		List<LongLat> list = new ArrayList<LongLat>();
		for (EuropeanaApi2Item item: results.getAllItems()) {
			try {
				list.add(new LongLat(
						Double.parseDouble(item.getEdmPlaceLatitude().get(0)),
						Double.parseDouble(item.getEdmPlaceLongitude().get(0)),
						1.0  
					));
			} catch(NumberFormatException nfe) {
				System.out.println("Number format exception in beethovenString()");
			}
		}
		
		return list;
	}
	
	
	
	public List<LongLat> returnDummyValues() {
		
		List<LongLat> list = new ArrayList<LongLat>();
		list.add(new LongLat(52.5, 13.4, 1)); //test values:
		list.add(new LongLat(52.34, 13.5, 1));
		list.add(new LongLat(52.45, 13.6, 1));
		list.add(new LongLat(52.15, 13.7, 1));
		list.add(new LongLat(52.34, 13.8, 1));
		list.add(new LongLat(52.1, 13.9, 1));
		
		int wieViel = (int) randInt(15, 30);
		for(int i = 0; i < wieViel; ++i) {
//			System.out.println("random: " + randInt(30, 50));
			list.add(new LongLat(randInt(40, 50), randInt(10, 30), 1.0));
		}
		
		int wieoft = (int) randInt(5, 15);
		for(int i = 0; i < wieoft; ++i) {
			list.add(new LongLat(randInt(40, 50), randInt(0, 15), 1.0));
		}
		
		return list;
	}
	
	public double randInt(double min, double max) {

		double intWert = ( min + (int)(Math.random() * ((max - min) + 1))  );
		
		double plusRest = intWert + (double) intWert/100;
		return plusRest - 0.07;
	}
}
