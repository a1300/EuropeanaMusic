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

	private ModelAndView handleSearch() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search");
		mav.addObject("message", "Europeana Search Results");
		return mav;
	}
}

