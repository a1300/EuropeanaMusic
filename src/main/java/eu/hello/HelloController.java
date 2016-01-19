package eu.hello;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping(value="/greeting")
	public String sayHello(Model model) {
		
		model.addAttribute("greeting", "Hello Peanuts");
		
		return "hello"; //return the view hello.jsp to the user
	}
}
