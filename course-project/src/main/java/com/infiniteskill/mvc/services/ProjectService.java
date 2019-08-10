package com.infiniteskill.mvc.services;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import com.infiniteskill.mvc.dto.ProjectDto;

public class ProjectService {
	
	private List<ProjectDto> projects = new LinkedList<>();
	
	public ProjectService() {
		ProjectDto javaProject = this.createProject("Java Project", "NASA", "This is a Java Project");
		javaProject.setProjectId(1L);
		ProjectDto javaScriptProject = this.createProject("Java Script Project", "NASA", "This is a Java Script Project");
		javaScriptProject.setProjectId(2L);
		ProjectDto htmlProject = this.createProject("Html Project", "NASA", "This is a Html Project");
		htmlProject.setProjectId(3L);
		
		this.projects.addAll(Arrays.asList(javaProject,htmlProject,javaScriptProject));
	}
	
	public List<ProjectDto> findAll(){
		return this.projects;
	}
	private ProjectDto createProject(String title,String sponsor, String description) {
		ProjectDto project = new ProjectDto();
		project.setName(title);
		//project.setSponsor(sponsor);
		project.setDescription(description);
		return project;
	}

	public ProjectDto findById(Long projectId) {
		return this.projects.stream().filter(obj -> projectId.equals(obj.getProjectId())).findAny().orElse(null);
		
	}

}
