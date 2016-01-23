package eu.europeana.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Map;
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

	/*
	 * **********************************
	 * **********************************
	 * THIS HERE IS WHAT MATTHIAS MADE WITH SERGIO YESTERDAY!!!!
	 * i just copied that down and commented this code for experimenting
	 * if something goes wrong with my experiments we still have the code that they made.
	 * **********************************
	 * **********************************
	 * */
	/*
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public ModelAndView handlePost(@RequestParam("name") String name, HttpServletRequest request) {
		
		System.out.println("name: " + request.getParameter("name"));
		Enumeration parameterNames = request.getParameterNames();
		System.out.println("parameterNames: " + parameterNames);
		
		while(parameterNames.hasMoreElements()) {
			
			System.out.println("parameterName " + parameterNames.nextElement().toString());
		}
		
		ModelAndView mav = handleSearch();
		
		return mav;
	}

	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView handleGet(Map<String, Object> map) {
		
		System.out.println("GET");

		ModelAndView mav = new ModelAndView("search");
		
		return mav;
	}
	*/

	
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
			@RequestParam(value="royaltyOpen", required = false) String royaltyOpen,
			@RequestParam(value="royaltyRestricted", required = false) String royaltyRestricted,
			@RequestParam(value="royaltyPermission", required = false) String royaltyPermission, 
			HttpServletRequest request) {
		
		System.out.println("name: " + request.getParameter("name"));
		Enumeration parameterNames = request.getParameterNames();
		
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
		
		QueryString queryString = new QueryString(list);
		
		while(parameterNames.hasMoreElements()) {
			
			System.out.println("parameterName " + parameterNames.nextElement().toString());
		}
		
		ModelAndView mav = handleSearch();
		
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

