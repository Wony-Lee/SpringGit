package com.tis.youhu;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class NewsController {
	
	@RequestMapping("/NewsList")
	public String NewsList(Model model) {
		
		return "youhu/NewsList";
	}
	
	@RequestMapping("/Noo")
	public String Nothing(Model model) {
	
		return "Noo";
	}
	
	@RequestMapping("/Noo2")
	public String Nothing2(Model model) {
	
		return "Noo2";
	}
}
