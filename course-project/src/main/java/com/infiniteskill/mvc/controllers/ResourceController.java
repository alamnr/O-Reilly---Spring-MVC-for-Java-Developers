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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.infiniteskill.mvc.dto.ProjectDto;
import com.infiniteskill.mvc.dto.ResourceDto;
import com.infiniteskill.mvc.services.ProjectService;

@Controller
@RequestMapping("/resource")
@SessionAttributes("resource")
public class ResourceController {
	
	@Autowired
	ProjectService projectService;
	
	@RequestMapping("/add")
	public String addResource(Model model) {
		System.out.println("Invoking Add method");
		model.addAttribute("resourceActive","active");
		return "resource_add";
	}
	
	@RequestMapping("/review")
	public String review(@ModelAttribute("resource") ResourceDto resource)
	{
		System.out.println("Invoking Review");
		return "resource_review";
	}
		
	@RequestMapping("/save")
	public String save(Model model, @ModelAttribute("resource") ResourceDto resource, SessionStatus sessionStatus) {
		System.out.println(resource);
		System.out.println("Invoking Svae method");
		model.addAttribute("resourceActive","active");
		sessionStatus.setComplete();
		return "redirect:/resource/add";
	}
	
	
	
	
	@ModelAttribute("resource")
	public ResourceDto getResource()
	{
		System.out.println("Adding a new resource to the model");
		//return new ResourceDto();
		ResourceDto resource = new ResourceDto();
		resource.setName("Jharna");
		return resource;
	}
	
	@ModelAttribute("projects")
	public List<ProjectDto> getProject()
	{
		return this.projectService.findAll();
	}
	
	@ModelAttribute("options")
	public Map<String,String> getTypes(){
		Map<String, String> options = new LinkedHashMap<String, String>();
		options.put("material", "Material");
		options.put("other", "Other");
		options.put("stuff", "Stuff");
		options.put("Tech","Technical Equipment");
		return options;
	}
	
	@ModelAttribute("radioOptions")
	public List<String> getRadios()
	{
		return  new LinkedList<>(Arrays.asList(new String[] {"Hours","Piece","Tons"}));
	}
	
	@ModelAttribute("checkOptions")
	public List<String> getChecks()
	{
		return new LinkedList<>(Arrays.asList(new String[] {"Lead Time","Special Rate","Requires Approval"}));
	}

}
