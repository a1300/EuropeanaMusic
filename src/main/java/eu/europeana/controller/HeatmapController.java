package eu.europeana.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import eu.europeana.model.LongLat;

@Controller
public class HeatmapController {

	@RequestMapping(value="/heatmap")
	public ModelAndView callHeatmap() {
		
		
		
		
		ModelAndView mav = new ModelAndView("heatmap");
		List<LongLat> list = new ArrayList<LongLat>();
		list.add(new LongLat(52.5, 13.4, 1)); //test values:
		list.add(new LongLat(52.34, 13.5, 1));
		list.add(new LongLat(52.45, 13.6, 1));
		list.add(new LongLat(52.15, 13.7, 1));
		list.add(new LongLat(52.34, 13.8, 1));
		list.add(new LongLat(52.1, 13.9, 1));
		mav.addObject("lists", list);
		
		return mav;
	}
}
