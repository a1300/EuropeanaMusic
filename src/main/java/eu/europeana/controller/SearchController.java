 package eu.europeana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SearchController {
	
	@RequestMapping(value="/search.html", method=RequestMethod.POST)//how we tight this to the url
	public String search() {
		
		return "search";
	}
}
