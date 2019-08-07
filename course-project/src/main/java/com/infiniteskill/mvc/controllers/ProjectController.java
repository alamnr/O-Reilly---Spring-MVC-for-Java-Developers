package com.infiniteskill.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@RequestMapping("/add")
	public String addProject(Model model) {
		
		model.addAttribute("projectActive","active");
		return "project_add";
	}

}
