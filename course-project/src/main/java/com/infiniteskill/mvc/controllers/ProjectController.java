package com.infiniteskill.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addProject(Model model) {
		System.out.println("Invoking Add Project");
		model.addAttribute("projectActive","active");
		return "project_add";
	}
	
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String saveProject(Model model) 
	{
		System.out.println("Invoking Save Project");
		model.addAttribute("projectActive","active");
		return "project_add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST,params= {"type=multi"})
	public String saveMultiYearProject(Model model) 
	{
		System.out.println("Invoking Save Multi Year Project");
		model.addAttribute("projectActive","active");
		return "project_add";
		
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST,params= {"type=multi","special"})
	public String saveSpecialProject(Model model) 
	{
		System.out.println("Invoke Save Special Project");
		model.addAttribute("projectActive","active");
		return "project_add";
	}

}
