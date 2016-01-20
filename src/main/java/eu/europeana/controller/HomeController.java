package eu.europeana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value="/index.html")
	public String comeHome(Model model) {
		
		//model.addAttribute("greeting", "Hello Peanuts");
		
		return "home"; //return the view hello.jsp to the user
	}
}