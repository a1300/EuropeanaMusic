package eu.europeana.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SearchController {

	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String someAction(@ModelAttribute("somedata") SomeData data, Map<String, Object> map) {
		
		System.out.println("POST " + data.getName());
		
		System.out.println("map " + map.size());
		
		map.put("somedata", data.getName());
		
		return "redirect:search.html"; //without redirect
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String getAction(Map<String, Object> map) {
		
		System.out.println("GET");
		System.out.println(map.size() == 0);
		
		if(map.size() == 0) {
			SomeData someData = new SomeData();
			someData.setName("hello");
			map.put("somedata", someData);
		}
		
		return "search";
	}
}

