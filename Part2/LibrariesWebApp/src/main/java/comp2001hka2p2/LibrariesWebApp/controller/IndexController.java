package comp2001hka2p2.LibrariesWebApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController 
{
	@GetMapping("/")
	public String indexPage()
	{
		return "LibrariesIndex";
	}
	
}
