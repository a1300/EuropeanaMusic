package eu.europeana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutController {

	@RequestMapping(value="/about")
	public ModelAndView getAbout() {
		
		ModelAndView mav = new ModelAndView("about"); //returns about.jsp
		
		return mav;
	}
}
