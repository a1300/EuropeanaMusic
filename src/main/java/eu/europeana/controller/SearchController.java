package eu.europeana.controller;

import java.util.Enumeration;
import java.util.Map;

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

/*
	
	//richi versuch
	public ModelAndView handlePost(@RequestParam("name") String name,String title, HttpServletRequest request) {
		
		System.out.println("name: " + request.getParameter("name"));
		Enumeration parameterNames = request.getParameterNames();
		System.out.println("parameterNames: " + parameterNames);
		
		
		System.out.println("title: " + request.getParameter("title"));
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
	//ende richi versuch
*/	
	
	private ModelAndView handleSearch() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search");
		mav.addObject("message", "Europeana Search Results");
		return mav;
	}
}

