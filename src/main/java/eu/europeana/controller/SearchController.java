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
			@RequestParam(value="radioLang", required = false)  String radioLang,
			@RequestParam(value="radioCoun", required = false)  String radioCoun,
			HttpServletRequest request) {
		
		
		ArrayList<String> list = new ArrayList<String>();
		//add name
		list.add(request.getParameter("name"));
		
		//add title
		list.add(request.getParameter("title"));
		
		//radioLanguages
		if(request.getParameter("radioLang") != null) {
			if(request.getParameter("radioLang").equals("en")) {
				list.add("en");
			}
			if(request.getParameter("radioLang").equals("de")) {
				list.add("de");
			}
			if(request.getParameter("radioLang").equals("fr")) {
				list.add("fr");
			}
			if(request.getParameter("radioLang").equals("es")) {
				list.add("es");
			}
		}
		
		//countries
		if(request.getParameter("radioCoun") != null) {
			if(request.getParameter("radioCoun").equals("austria")) {
				list.add("austria");
			}
			if(request.getParameter("radioCoun").equals("germany")) {
				list.add("germany");
			}
			if(request.getParameter("radioCoun").equals("france")) {
				list.add("france");
			}
			if(request.getParameter("radioCoun").equals("spain")) {
				list.add("spain");
			}
		}
		/*
		System.out.println("Achtung!!!:");
		for(String s : list) {
			System.out.println(s);
		}*/

		/* Make the QUERY */
		Api2Query europeanaQuery = new Api2Query();
		europeanaQuery.setCreator(name);
 		europeanaQuery.setType(EuropeanaComplexQuery.TYPE.SOUND);
		europeanaQuery.setTitle(title);
		
		
        EuropeanaApi2Client europeanaClient = new EuropeanaApi2Client();
		EuropeanaApi2Results res = new EuropeanaApi2Results();
		try {
			res = europeanaClient.searchApi2(europeanaQuery, 130, 1);
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
	

}

