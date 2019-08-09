package com.infiniteskill.mvc.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.infiniteskill.mvc.dto.ResourceDto;

@Controller
@RequestMapping("/resource")
public class ResourceController {
	
	@RequestMapping("/add")
	public String addResource(Model model) {
		model.addAttribute("resource", new ResourceDto());
		model.addAttribute("resourceActive","active");
		return "resource_add";
	}
	
	@RequestMapping("/save")
	public String save(Model model) {
		System.out.println("Invoking Svae method");
		model.addAttribute("resourceActive","active");
		return "resource_add";
	}

}
