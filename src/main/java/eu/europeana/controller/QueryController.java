package eu.europeana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QueryController {

	@RequestMapping(value="/search.html", method=RequestMethod.POST)
	public String receiveString()  {
		
		return "search.html";
	}
}
