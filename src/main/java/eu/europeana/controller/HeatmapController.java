package eu.europeana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeatmapController {

	@RequestMapping(value="/heatmap")
	public String callHeatmap() {
		
	
		return "heatmap"; // heatmap.jsp
	}
}
