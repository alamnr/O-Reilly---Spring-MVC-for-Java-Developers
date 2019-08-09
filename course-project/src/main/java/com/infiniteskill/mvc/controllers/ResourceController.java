package com.infiniteskill.mvc.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.infiniteskill.mvc.dto.ResourceDto;

@Controller
@RequestMapping("/resource")
public class ResourceController {
	
	@RequestMapping("/add")
	public String addResource(Model model) {
		ResourceDto resource = new ResourceDto();
		resource.setName("Jharna");
		//model.addAttribute("resource", new ResourceDto());
		model.addAttribute("resource", resource);
		model.addAttribute("resourceActive","active");
		return "resource_add";
	}
	
	@RequestMapping("/save")
	public String save(Model model, @ModelAttribute("resource") ResourceDto resource) {
		System.out.println(resource);
		System.out.println("Invoking Svae method");
		model.addAttribute("resourceActive","active");
		return "resource_add";
	}

}
