package com.infiniteskill.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.infiniteskill.mvc.dto.ProjectDto;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home(Model model) {
		
		ProjectDto projectDto = new ProjectDto();
		projectDto.setName("First Project");
		projectDto.setSponsor("NASA");
		projectDto.setDescription("This is a simple project sponsored by NASA");
		
		model.addAttribute("project", projectDto);
		model.addAttribute("homeActive", "active");
		return "home";
	}

}
