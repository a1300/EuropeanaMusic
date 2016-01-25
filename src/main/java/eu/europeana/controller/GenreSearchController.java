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
public class GenreSearchController{

	@RequestMapping(value="/genre", method=RequestMethod.POST)
	public ModelAndView handlePost(
			@RequestParam("genre") String genre,
			HttpServletRequest request) {
		
		
		ArrayList<String> list = new ArrayList<String>();
		
		//add genre
		list.add(request.getParameter("genre"));
		
		/* Make the QUERY */
		Api2Query europeanaQuery = new Api2Query();
		europeanaQuery.setTitle(genre);
		europeanaQuery.setType(EuropeanaComplexQuery.TYPE.SOUND);
		europeanaQuery.setProfile("rich");
		
        EuropeanaApi2Client europeanaClient = new EuropeanaApi2Client();
		EuropeanaApi2Results res = new EuropeanaApi2Results();
		try {
			System.out.println(europeanaQuery.getQueryString());
			res = europeanaClient.searchApi2(europeanaQuery, 130, 1);
		} catch (IOException e1) {
			e1.printStackTrace();
		} catch (EuropeanaApiProblem e1) {
			e1.printStackTrace();
		}
	 
		List<GenreObj> jspList = new ArrayList<GenreObj>(); //send this to search.jsp
       
	    int count = 0;
        for (EuropeanaApi2Item item : res.getAllItems()) {
        	
        	jspList.add(new GenreObj(item.getTitle(),item.getEdmIsShownBy(), item.getObjectURL(), item.getCountry() ) );
        		
        	 System.out.println();
	         System.out.println("**** " + (count++ + 1));
	         System.out.println("Title: " + item.getTitle());
	         System.out.println("Europeana URL: " + item.getObjectURL());
	         System.out.println("Type: " + item.getType());
	         System.out.println("Creator(s): " + item.getDcCreator());
	         System.out.println("Thumbnail(s): " + item.getEdmPreview());
	         System.out.println("Data provider: "
	                 + item.getDataProvider());
	         System.out.println("Data provider: "
	                 + item.getDataProvider());
	         
        }

		ModelAndView mav = new ModelAndView("genre"); //route to search.jsp
		mav.addObject("lists", jspList); //add jspList to the ModelAndView
		
		return mav;
	}
	
	
	
	@RequestMapping(value="/genre", method=RequestMethod.GET)
	public ModelAndView handleGet(Map<String, Object> map) {
		
		System.out.println("GET");

		ModelAndView mav = new ModelAndView("genre");
		
		return mav;
	}
	

}

