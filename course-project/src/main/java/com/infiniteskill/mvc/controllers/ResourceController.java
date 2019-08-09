package com.infiniteskill.mvc.controllers;


import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.infiniteskill.mvc.dto.ProjectDto;
import com.infiniteskill.mvc.dto.ResourceDto;
import com.infiniteskill.mvc.services.ProjectService;

@Controller
@RequestMapping("/resource")
public class ResourceController {
	
	@Autowired
	ProjectService projectService;
	
	@RequestMapping("/add")
	public String addResource(Model model) {
		//List<String> options = new LinkedList<>(Arrays.asList(new String[] {"Material","Other", "Staff", "Technical Equipment"}));
		Map<String, String> options = new LinkedHashMap<String, String>();
		options.put("material", "Material");
		options.put("other", "Other");
		options.put("stuff", "Stuff");
		options.put("Tech","Technical Equipment");
		model.addAttribute("options",options);
		
		model.addAttribute("projects",this.projectService.findAll());
		
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
