package com.infiniteskill.mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.infiniteskill.mvc.dto.ProjectDto;
import com.infiniteskill.mvc.services.ProjectService;

@Controller
public class HomeController {
	
	@Autowired
	ProjectService projectService;
	
	
	@RequestMapping(value="/")
	public String goHomeAgain(@ModelAttribute("project") ProjectDto project, Model model)
	{		
		model.addAttribute("project", project);
		model.addAttribute("homeActive", "active");
		return "home";
	}
	
	/*@RequestMapping(value="/", params="projectId")
	public String goHomeAgain(@RequestParam("projectId") Long projectId, Model model)
	{		
		model.addAttribute("project", this.projectService.findById(projectId));
		model.addAttribute("homeActive", "active");
		return "home";
	}*/
	
	/*@RequestMapping("/")
	public String home(Model model) {
		
		ProjectDto projectDto = new ProjectDto();
		projectDto.setName("First Project");
		//projectDto.setSponsor("NASA");
		projectDto.setDescription("This is a simple project sponsored by NASA");
		
		model.addAttribute("project", projectDto);
		model.addAttribute("homeActive", "active");
		//return "home";
		return "welcome";
	}*/

}
