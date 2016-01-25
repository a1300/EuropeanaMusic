package eu.europeana.controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;



import eu.europeana.api.client.model.EuropeanaApi2Results;
import eu.europeana.api.client.model.search.EuropeanaApi2Item;
import eu.europeana.api.client.*;
import eu.europeana.api.client.EuropeanaApi2Client;
import eu.europeana.api.client.connection.EuropeanaConnection;
import eu.europeana.api.client.exception.EuropeanaApiProblem;
import eu.europeana.api.client.model.EuropeanaApi2Results;
import eu.europeana.api.client.search.query.Api2Query;
import eu.europeana.api.client.search.query.EuropeanaComplexQuery;
import eu.europeana.model.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;


@Controller
public class SearchController /*extends SimpleFormController */ {

	
	//richi versuch
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public ModelAndView handlePost(
			@RequestParam("name") String name,
			@RequestParam("title") String title,
			@RequestParam(value="languageEnglish", required = false)  String languageEnglish,
			@RequestParam(value="languageGerman", required = false)  String languageGerman,
			@RequestParam(value="languageFrench", required = false)  String languageFrench,
			@RequestParam(value="languageSpanish", required = false)  String languageSpanish,
			@RequestParam(value="countryEngland", required = false) String countryEngland,
			@RequestParam(value="countryGermany", required = false) String countryGermany,
			@RequestParam(value="countryFrance", required = false) String countryFrance,
			@RequestParam(value="countrySpain", required = false) String countrySpain,
		/*	@RequestParam(value="royaltyOpen", required = false) String royaltyOpen,
			@RequestParam(value="royaltyRestricted", required = false) String royaltyRestricted,
			@RequestParam(value="royaltyPermission", required = false) String royaltyPermission, */
			HttpServletRequest request) {
		
		Enumeration parameterNames = request.getParameterNames();
		
		ArrayList<String> list = new ArrayList<String>();
		list.add(request.getParameter("name"));
		list.add(request.getParameter("title"));
		list.add(request.getParameter("languageEnglish"));
		list.add(request.getParameter("languageGerman"));
		list.add(request.getParameter("languageFrench"));
		list.add(request.getParameter("languageSpanish"));
		list.add(request.getParameter("countryEngland"));
		list.add(request.getParameter("countryGermany"));
		list.add(request.getParameter("countryFrance"));
		list.add(request.getParameter("countrySpain"));
		list.add(request.getParameter("royaltyOpen"));
		list.add(request.getParameter("royaltyRestricted"));
		list.add(request.getParameter("royaltyPermission"));
		
		System.out.println("KontrollAusgabe");
		for(String s : list) {
			System.out.println("s " + s);
		}
		
System.out.println("title: " + request.getParameter("title"));
		
		System.out.println("languageEnglish: " 	+ request.getParameter("languageEnglish"));
		System.out.println("languageGerman: " 	+ request.getParameter("languageGerman"));
		System.out.println("languageFrench: " 	+ request.getParameter("languageFrench"));
		System.out.println("languageSpanish: " 	+ request.getParameter("languageSpanish"));
		
		System.out.println("countryEngland: " 	+ request.getParameter("countryEngland"));
		System.out.println("countryGermany: " 	+ request.getParameter("countryGermany"));
		System.out.println("countryFrance: " 	+ request.getParameter("countryFrance"));
		System.out.println("countrySpain: " 	+ request.getParameter("countrySpain"));

		System.out.println("royaltyOpen: " + request.getParameter("royaltyOpen"));
		System.out.println("royaltyRestricted: " + request.getParameter("royaltyRestricted"));
		System.out.println("royaltyPermission: " + request.getParameter("royaltyPermission"));
		
		/* Make the QUERY 
		 * 
		 */
		Api2Query europeanaQuery = new Api2Query();
		europeanaQuery.setCreator(name);
 		europeanaQuery.setType(EuropeanaComplexQuery.TYPE.SOUND);
		europeanaQuery.setTitle(title);
		
		/* languages */
		if(languageEnglish !=null) {
			europeanaQuery.setLanguage(languageEnglish);
		}
		if(languageGerman !=null) {
			europeanaQuery.setLanguage(languageGerman);
		}
		if(languageFrench !=null) {
			europeanaQuery.setLanguage(languageFrench);
		}
		if(languageSpanish !=null) {
			europeanaQuery.setLanguage(languageSpanish);
		}
		
		/* countries */
		if(countryEngland !=null) {
			europeanaQuery.setCountry(countryEngland);
		}
		if(countryGermany !=null) {
			europeanaQuery.setCountry(countryGermany);
		}
		if(countryFrance !=null) {
			europeanaQuery.setCountry(countryFrance);
		}
		if(countrySpain !=null) {
			europeanaQuery.setCountry(countrySpain);
		}
		
		
        EuropeanaApi2Client europeanaClient = new EuropeanaApi2Client();
		EuropeanaApi2Results res = new EuropeanaApi2Results();
		try {
			res = europeanaClient.searchApi2(europeanaQuery,10, 1);
		} catch (IOException e1) {
			e1.printStackTrace();
		} catch (EuropeanaApiProblem e1) {
			e1.printStackTrace();
		}
	 
		List<SearchObj> jspList = new ArrayList<SearchObj>(); //send this to search.jsp
       
	    int count = 0;
        for (EuropeanaApi2Item item : res.getAllItems()) {
        	
        	jspList.add(new SearchObj(item.getDcCreator(), item.getTitle(), item.getEuropeanaCollectionName(), item.getEdmIsShownBy() ) );
        	
	    	 System.out.println();
	         System.out.println("**** " + (count++ + 1));
	         System.out.println("Title: " + item.getTitle());
	         System.out.println("Europeana URL: " + item.getObjectURL());
	         System.out.println("Type: " + item.getType());
	         System.out.println("Creator(s): " + item.getDcCreator());
	         System.out.println("Thumbnail(s): " + item.getEdmPreview());
	         System.out.println("Data provider: "
	                 + item.getDataProvider());
		}

		ModelAndView mav = new ModelAndView("search"); //route to search.jsp
		mav.addObject("lists", jspList); //add jspList to the ModelAndView
		
		return mav;
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView handleGet(Map<String, Object> map) {
		
		System.out.println("GET");

		ModelAndView mav = new ModelAndView("search");
		
		return mav;
	}
	//ende richi versuch
	
	
	private ModelAndView handleSearch() {//should we paste here the queryString search?
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search"); // die jsp Datei
		mav.addObject("message", "Europeana Search Results");
		mav.addObject("titel", "Mein Titel");
		return mav;
	}
}

