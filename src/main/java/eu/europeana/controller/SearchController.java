 package eu.europeana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	
	@RequestMapping(value="/search.html")//how we tight this to the url
	public String search() {
		
		return "search";
	}
}
