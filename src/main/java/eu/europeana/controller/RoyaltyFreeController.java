package eu.europeana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class RoyaltyFreeController {


		@RequestMapping(value={"/royalty", "/royaltyfree"}, method=RequestMethod.POST)
		public ModelAndView handlePost() {
				
			ModelAndView mav = new ModelAndView("royalty");
			
			return mav;
		}
		
		@RequestMapping(value={"/royalty", "/royaltyfree"}, method=RequestMethod.GET)
		public ModelAndView handleGet() {
			
			ModelAndView mav = new ModelAndView("royalty");
			
			return mav;
		}	
}
