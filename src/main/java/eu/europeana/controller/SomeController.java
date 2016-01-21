package eu.europeana.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SomeController {

	
	/*
	@RequestMapping(value="/some", method=RequestMethod.POST)
	public String someAction(@ModelAttribute("somedata") SomeData data, Map<String, Object> map,
	                                HttpServletRequest request) {

	       System.out.println("Name=" + data.getName() + " age=" + request.getParameter("age"));
	       System.out.println("test: " + data.getName());
	       
	        //do some process and send back the data
	        map.put("somedata", data);
	        map.put("age", request.getParameter("age"));

	        System.out.println("before return");
	        return "some";
	   } */
	
	@RequestMapping(value="/some", method=RequestMethod.POST)
	public String someAction(@ModelAttribute("somedata") SomeData data) {
		
		System.out.println("POST " + data.getName());
		
		return "some";
	}
	
	@RequestMapping(value="/some", method=RequestMethod.GET)
	public String getAction(Map<String, Object> map) {
		
		SomeData someData = new SomeData();
		someData.setName("hello");
		map.put("somedata", someData);
		
		return "some";
	}
}
