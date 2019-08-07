package com.infiniteskill.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/resource")
public class ResourceController {
	
	@RequestMapping("/add")
	public String addResource(Model model) {
		model.addAttribute("resourceActive","active");
		return "resource_add";
	}

}
