package com.infiniteskill.mvc.controllers;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infiniteskill.mvc.dto.ProjectDto;
import com.infiniteskill.mvc.services.ProjectService;
import com.infiniteskill.mvc.validators.ProjectValidator;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	
	@Autowired
	private ProjectService projectService;  
	
	@RequestMapping(value="find/{projectId}")
	@ResponseBody
	public ProjectDto findById(@PathVariable("projectId") Long projectId, Model model) {
		model.addAttribute("projectActive","active");
		return this.projectService.findById(projectId);
	}
	
	@RequestMapping("/{projectId}")
	public String projectDetails(@PathVariable("projectId") Long projectId,Model model)
	{
		model.addAttribute("project",this.projectService.findById(projectId));
		model.addAttribute("projectActive","active");
		return "project_details";
	}
	
	@RequestMapping("/find")
	public String find(Model model)
	{
		model.addAttribute("projects",this.projectService.findAll());
		model.addAttribute("projectActive","active");
		return "projects";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addProject(Model model, HttpSession session) {
		session.setAttribute("token", UUID.randomUUID());
		System.out.println("Invoking Add Project");
		model.addAttribute("projectActive","active");
		model.addAttribute("project",new ProjectDto());
		return "project_add";
	}
	
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	//public String saveProject(@Valid @ModelAttribute("project") ProjectDto project, BindingResult result, Model model) 
	public String saveProject( @ModelAttribute("project") @Valid ProjectDto project, Errors errors,
			Model model, RedirectAttributes redirectAttributes)
	{
		// You  can use either Error or Binding Result to check validation error
		//if( result.hasErrors()) {
		if(!errors.hasErrors()) {
			System.out.println("The Project validated");
		}
		else {
			System.out.println("The project did not validate");
			return "project_add";
		}
		System.out.println(project);
		System.out.println("Invoking Save Project");
		model.addAttribute("projectActive","active");
		
		project.setProjectId(55L);
		this.projectService.save(project);
		//redirectAttributes.addAttribute("projectId", project.getProjectId().toString());
		redirectAttributes.addFlashAttribute("project",project);
		
		//return "redirect:/project/add";
		return "redirect:/";
	}
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new ProjectValidator());
	}
	
	/*@RequestMapping(value="/add", method=RequestMethod.POST,params= {"type=multi"})
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
*/
}
