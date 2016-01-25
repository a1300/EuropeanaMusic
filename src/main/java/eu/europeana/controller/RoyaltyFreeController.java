package eu.europeana.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eu.europeana.api.client.EuropeanaApi2Client;
import eu.europeana.api.client.exception.EuropeanaApiProblem;
import eu.europeana.api.client.model.EuropeanaApi2Results;
import eu.europeana.api.client.model.search.EuropeanaApi2Item;
import eu.europeana.api.client.search.query.Api2Query;
import eu.europeana.api.client.search.query.EuropeanaComplexQuery;
import eu.europeana.model.RoyaltyObj;


@Controller
public class RoyaltyFreeController {


		@RequestMapping(value={"/royalty", "/royaltyfree"}, method=RequestMethod.POST)
		public ModelAndView handlePost(
				@RequestParam("title") String title,
				@RequestParam(value="reusability", required = false)  String reusability,
				HttpServletRequest request) 
		{
			
			//test output
			System.out.println("title: " + title);
			System.out.println("reusability: " + reusability);
			
			List<String> paramList = new ArrayList<String>();
			paramList.add(request.getParameter("title"));
			paramList.add(request.getParameter("reusability"));	
			
			//make the query
			Api2Query europeanaQuery  = new Api2Query();
			//test
			//europeanaQuery.setCreator("Bach");
			europeanaQuery.setTitle(title);
			europeanaQuery.setProfile("rich");
			europeanaQuery.setType(EuropeanaComplexQuery.TYPE.SOUND);

			//test
			
			
			
			if(reusability.equals("open")) {
				europeanaQuery.setWholeSubQuery("permission=open");
			}
			if(reusability.equals("restricted")) {
				europeanaQuery.setWholeSubQuery("permission=restricted");
			}
			if(reusability.equals("permission")) {
				europeanaQuery.setWholeSubQuery("permission=permission");
			}

			
			EuropeanaApi2Client europeanaClient = new EuropeanaApi2Client();
			EuropeanaApi2Results results = new EuropeanaApi2Results();
			try{
				results = europeanaClient.searchApi2(europeanaQuery, 15, 1);
			} catch(IOException e) {
				e.printStackTrace();
			} catch(EuropeanaApiProblem e1) {
				e1.printStackTrace();
			}
			
			List<RoyaltyObj> royaltyList = new ArrayList<RoyaltyObj>();
			
			for (EuropeanaApi2Item item: results.getAllItems()){
				royaltyList.add(new RoyaltyObj(item.getTitle(),item.getEdmIsShownBy(),item.getDataProvider(),item.getRights()));
			}
			
				
			ModelAndView mav = new ModelAndView("royalty");
			mav.addObject("lists", royaltyList);
			
			
			return mav;
		}
		
		@RequestMapping(value={"/royalty", "/royaltyfree"}, method=RequestMethod.GET)
		public ModelAndView handleGet() {
			
			ModelAndView mav = new ModelAndView("royalty");
			
			return mav;
		}	
}
